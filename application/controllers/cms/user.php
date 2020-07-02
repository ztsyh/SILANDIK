<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_user');
	}

	public function index()
	{
		$this->fungsi->check_previleges('user');
		$data['user'] = $this->m_user->getList();
		$this->load->view('cms/user/v_user_list',$data);
	}


	public function formadd($value='')
	{
		$this->fungsi->check_previleges('user');
		$data['level']  = get_options($this->db->query('select id, level from master_level'),true);
		$data['bagian'] = get_options($this->db->query('select id, bagian from master_bagian'),true);
		$this->load->view('cms/user/v_user_addd',$data);
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'username',
					'label' => 'Kode Komponen',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'password',
					'label' => 'Nama Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'no_hp',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'level',
					'label' => 'Uraian Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'bagian',
					'label' => 'Uraian Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'alamat',
					'label' => 'Uraian Komponen',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['level']  = get_options($this->db->query('select id, level from master_level where id !=1'),true);
			$data['bagian'] = get_options($this->db->query('select id, bagian from master_bagian'),true);
			$this->load->view('cms/user/v_user_addd',$data);
		}
		else
		{

			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('ufile'))
		    {
		      $err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
		    {
		      $data = $this->upload->data();
		      /***********************/
		      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
		      /**********************/
		      $config['image_library'] = 'gd2';
		      $config['source_image'] = $upload_folder.$data['file_name'];
		      $config['maintain_ratio'] = TRUE;
		      $config['width'] = 100;
		      $config['height'] = 100;

		      $this->load->library('image_lib', $config);

		      if ( ! $this->image_lib->resize())
		      {
		        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
		      }
		      else
		      {
		      	$pass_en  = $this->db->query("SELECT PASSWORD('".$this->input->post('password')."') as pass")->row()->pass;
		      	$datapost = array(
				'nama'     => $this->input->post('nama'), 
				'username' => $this->input->post('username'), 
				'password' => $pass_en, 
				'level'    => $this->input->post('level'), 
				'bagian'   => $this->input->post('bagian'), 
				'gambar'   => substr($upload_folder,2).$data['file_name'], 
				'no_hp'    => $this->input->post('no_hp'), 
				'alamat'   => $this->input->post('alamat'), 
				);
		        $this->m_user->insertData($datapost);
				$this->fungsi->catat($datapost,"Menambah Master user dengan data sbb:",true);
				$data['msg'] = "user Baru Disimpan....";
				echo json_encode($data);
				
		      }
		    }
			
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'username',
					'label' => 'Kode Komponen',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'password',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'no_hp',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'level',
					'label' => 'Uraian Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'alamat',
					'label' => 'Uraian Komponen',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cms_user',array('id'=>$id));
			$data['level']=get_options($this->db->query('select id, level from master_level where id !=1'),true);
			$data['bagian'] = get_options($this->db->query('select id, bagian from master_bagian'),true);
			$this->load->view('cms/user/v_user_editt',$data);
		}
		else
		{
			if ($this->input->post('password')=='') {
				$datapost = array(
				'id'       => $this->input->post('id'), 
				'nama'     => $this->input->post('nama'), 
				'username' => $this->input->post('username'), 
				'level'    => $this->input->post('level'),
				'bagian'   => $this->input->post('bagian'),
				'no_hp'    => $this->input->post('no_hp'), 
				'alamat'   => $this->input->post('alamat'), 
				);
			} else {
				$pass_en  = $this->db->query("SELECT PASSWORD('".$this->input->post('password')."') as pass")->row()->pass;
				$datapost = array(
				'id'       => $this->input->post('id'),
				'nama'     => $this->input->post('nama'), 
				'username' => $this->input->post('username'), 
				'password' => $pass_en, 
				'level'    => $this->input->post('level'), 
				'bagian'   => $this->input->post('bagian'), 
				'no_hp'    => $this->input->post('no_hp'), 
				'alamat'   => $this->input->post('alamat'), 
				);
			}
			
		      	
			$this->m_user->insertData($datapost,false);
			$this->fungsi->catat($datapost,"Mengubah user dengan data sbb:",true);
			$data['msg'] = "user Diperbarui....";
			echo json_encode($data);
		}
	}

	public function show_editForm_file($id='')
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'username',
					'label' => 'Kode Komponen',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'password',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'no_hp',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'level',
					'label' => 'Uraian Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'bagian',
					'label' => 'Uraian Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'alamat',
					'label' => 'Uraian Komponen',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cms_user',array('id'=>$id));
			$data['level']=get_options($this->db->query('select id, level from master_level'),true);
			$data['bagian'] = get_options($this->db->query('select id, bagian from master_bagian'),true);
			$this->load->view('cms/user/v_user_editt',$data);
		}
		else
		{
			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('ufile'))
		    {
		      $err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
		    {
		      $data = $this->upload->data();
		      /***********************/
		      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
		      /**********************/
		      $config['image_library'] = 'gd2';
		      $config['source_image'] = $upload_folder.$data['file_name'];
		      $config['maintain_ratio'] = TRUE;
		      $config['width'] = 100;
		      $config['height'] = 100;

		      $this->load->library('image_lib', $config);

		      if ( ! $this->image_lib->resize())
		      {
		        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
		      }
		      else
		      {
		      	if ($this->input->post('password')=='') {
					$datapost = array(
					'id'       => $this->input->post('id'),
					'nama'     => $this->input->post('nama'), 
					'username' => $this->input->post('username'), 
					'level'    => $this->input->post('level'), 
					'bagian'   => $this->input->post('bagian'), 
					'gambar'   => substr($upload_folder,2).$data['file_name'], 
					'no_hp'    => $this->input->post('no_hp'), 
					'alamat'   => $this->input->post('alamat'), 
					);
				} else {
					$pass_en  = $this->db->query("SELECT PASSWORD('".$this->input->post('password')."') as pass")->row()->pass;
					$datapost = array(
					'id'       => $this->input->post('id'),
					'nama'     => $this->input->post('nama'), 
					'username' => $this->input->post('username'), 
					'password' => $pass_en, 
					'level'    => $this->input->post('level'), 
					'bagian'   => $this->input->post('bagian'), 
					'gambar'   => substr($upload_folder,2).$data['file_name'],  
					'no_hp'    => $this->input->post('no_hp'), 
					'alamat'   => $this->input->post('alamat'), 
					);
				}
				$this->m_user->insertData($datapost,false);
				$this->fungsi->catat($datapost,"Mengubah user dengan data sbb:",true);
				$data['msg'] = "user Diperbarui.....";
				echo json_encode($data);
				
		      }
		     }

		}
	}

	public function show_editForm_user($id='')
	{
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'username',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'password',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'no_hp',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'alamat',
					'label' => 'Uraian Komponen',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cms_user',array('id'=>$id));
			$data['level']=get_options($this->db->query('select id, level from master_level where id !=1'),true);
			$this->load->view('cms/user/v_user_edit_user',$data);
		}
		else
		{
			if ($this->input->post('password')=='') {
				$datapost = array(
				'id'     => $this->input->post('id'), 
				'nama'     => $this->input->post('nama'), 
				'username' => $this->input->post('username'), 
				'no_hp'    => $this->input->post('no_hp'), 
				'alamat'   => $this->input->post('alamat'), 
				);
			} else {
				$pass_en  = $this->db->query("SELECT PASSWORD('".$this->input->post('password')."') as pass")->row()->pass;
				$datapost = array(
				'id'     => $this->input->post('id'),
				'nama'     => $this->input->post('nama'), 
				'username' => $this->input->post('username'), 
				'password' => $pass_en, 
				'no_hp'    => $this->input->post('no_hp'), 
				'alamat'   => $this->input->post('alamat'), 
				);
			}
			
		      	
			$this->m_user->insertData($datapost,false);
			$this->fungsi->catat($datapost,"Mengubah user dengan data sbb:",true);
			$data['msg'] = "Berhasil! Silahkan Logout Dulu untuk melihat Perubahan";
			echo json_encode($data);
		}
	}

	public function show_editForm_file_user($id='')
	{
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				),
				array(
					'field'	=> 'username',
					'label' => 'Kode Komponen',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'password',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'no_hp',
					'label' => 'Nama Komponen',
					'rules' => ''
				),
				array(
					'field'	=> 'alamat',
					'label' => 'Uraian Komponen',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cms_user',array('id'=>$id));
			$data['level']=get_options($this->db->query('select id, level from master_level'),true);
			$this->load->view('cms/user/v_user_edit_user',$data);
		}
		else
		{
			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('ufile'))
		    {
		      $err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
		    {
		      $data = $this->upload->data();
		      /***********************/
		      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
		      /**********************/
		      $config['image_library'] = 'gd2';
		      $config['source_image'] = $upload_folder.$data['file_name'];
		      $config['maintain_ratio'] = TRUE;
		      $config['width'] = 100;
		      $config['height'] = 100;

		      $this->load->library('image_lib', $config);

		      if ( ! $this->image_lib->resize())
		      {
		        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
		      }
		      else
		      {
		      	if ($this->input->post('password')=='') {
					$datapost = array(
					'id'     => $this->input->post('id'),
					'nama'     => $this->input->post('nama'), 
					'username' => $this->input->post('username'), 
					'gambar'   => substr($upload_folder,2).$data['file_name'], 
					'no_hp'    => $this->input->post('no_hp'), 
					'alamat'   => $this->input->post('alamat'), 
					);
				} else {
					$pass_en  = $this->db->query("SELECT PASSWORD('".$this->input->post('password')."') as pass")->row()->pass;
					$datapost = array(
					'id'     => $this->input->post('id'),
					'nama'     => $this->input->post('nama'), 
					'username' => $this->input->post('username'), 
					'password' => $pass_en, 
					'gambar'   => substr($upload_folder,2).$data['file_name'],  
					'no_hp'    => $this->input->post('no_hp'), 
					'alamat'   => $this->input->post('alamat'), 
					);
				}
				$this->m_user->insertData($datapost,false);
				$this->fungsi->catat($datapost,"Mengubah user dengan data sbb:",true);
				$data['msg'] = "Berhasil! Silahkan Logout Dulu untuk melihat Perubahan";
				echo json_encode($data);
				
		      }
		     }

		}
	}

	public function delete($id)
	{
		$this->fungsi->check_previleges('user');
		if($id == '' || !is_numeric($id)) die;
		$this->m_user->deleteData($id);
		$this->fungsi->run_js('load_silent("cms/user","#content")');
		$this->fungsi->message_box("Data Master user berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}

}

/* End of file user.php */
/* Location: ./application/controllers/cms/user.php */