<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Instansi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_instansi');
	}

	public function index()
	{
		$this->fungsi->check_previleges('instansi');
		$data['row'] = $this->m_instansi->getEdit('1')->row();
		$this->load->view('master/instansi/v_instansi',$data);
	}

	public function edit($id='')
	{
		$this->fungsi->check_previleges('instansi');
		$datapost = get_post_data(array('id','nama','alamat','kode','provinsi','email','website','telepon','kementerian','tahun_ajaran','nama_fakultas','nama_dekan','alamat_fakultas','telepon_fakultas','nama_jurusan','nama_kajur','nama_kalab','telepon_jurusan','alamat_jurusan','deskripsi_jurusan','peta_jurusan','zona_waktu'));
		$this->m_instansi->updateData($datapost);
		$this->fungsi->catat($datapost,"Mengubah data instansi sbb:",true);
		$data['msg'] = "Data Instansi Diperbarui";
		echo json_encode($data);
	}

	public function edit_file($id='')
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
	    if ( ! $this->upload->do_upload('logo'))
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
	      	$datapost = array(
			'id'                => $this->input->post('id'), 
			'nama'              => $this->input->post('nama'), 
			'alamat'            => $this->input->post('alamat'), 
			'kode'              => $this->input->post('kode'), 
			'provinsi'          => $this->input->post('provinsi'), 
			'email'             => $this->input->post('email'), 
			'website'           => $this->input->post('website'), 
			'logo'              => substr($upload_folder,2).$data['file_name'], 
			'telepon'           => $this->input->post('telepon'), 
			'kementerian'       => $this->input->post('kementerian'), 
			'tahun_ajaran'      => $this->input->post('tahun_ajaran'), 
			'nama_fakultas'     => $this->input->post('nama_fakultas'), 
			'nama_dekan'        => $this->input->post('nama_dekan'), 
			'alamat_fakultas'   => $this->input->post('alamat_fakultas'), 
			'telepon_fakultas'  => $this->input->post('telepon_fakultas'), 
			'nama_jurusan'      => $this->input->post('nama_jurusan'), 
			'nama_kajur'        => $this->input->post('nama_kajur'), 
			'nama_kalab'        => $this->input->post('nama_kalab'), 
			'telepon_jurusan'   => $this->input->post('telepon_jurusan'), 
			'alamat_jurusan'    => $this->input->post('alamat_jurusan'), 
			'deskripsi_jurusan' => $this->input->post('deskripsi_jurusan'), 
			'zona_waktu'        => $this->input->post('zona_waktu'),
			
			
			);
			$this->m_instansi->updateData($datapost);
			$this->fungsi->catat($datapost,"Mengubah data instansi sbb:",true);
			$data['msg'] = "Data Instansi Diperbarui";
			echo json_encode($data);
			
	      }
	     }
	}

}

/* End of file instansi.php */
/* Location: ./application/controllers/master/instansi.php */