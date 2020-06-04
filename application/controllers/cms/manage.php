<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Manage extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_manage');
	}
	/* MENU MANAGEMENT */
	public function menu()
	{
		$this->fungsi->check_previleges('menu');
		$level = $this->uri->segment(4,1);
		$datalevel = $this->m_menu->get_level();
		$data['menu'] = $this->m_menu->get_menu_manage();
		$data['level'] = get_options($datalevel);
		$data['cur_level'] = $level;
		$this->load->view('cms/manage/menu',$data);
	}
	public function save_menu_manage()
	{
		$this->fungsi->check_previleges('menu');
		$datapost = get_post_data(array('allowed_level','cur_level'));
		$this->m_menu->save_menu_manage($datapost);
		$this->fungsi->run_js('load_silent("cms/manage/menu/'.$datapost['cur_level'].'","#content")');
		$this->fungsi->message_box("Menu berhasil diupdate...","success");
		$this->fungsi->catat($datapost,"Mengubah manajemen menu, dengan data:",true);
	}
	public function add_menu()
	{
		$this->fungsi->check_previleges('menu');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama',
					'label' => 'Nama',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'deskripsi',
					'label' => 'Deskripsi',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'alias',
					'label' => 'Alias',
					'rules' => 'trim|required|callback_alias_unique'
				),
				array(
					'field'	=> 'allowed_level[]',
					'label' => 'Allowed Level',
					'rules' => 'required'
				),
				array(
					'field'	=> 'url',
					'label' => 'URI',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'aktif',
					'label' => 'Aktif',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'urutan',
					'label' => 'Urutan',
					'rules' => 'required|numeric'
				),
				array(
					'field'	=> 'grup',
					'label' => 'Grup',
					'rules' => 'trim|required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['grup'] = get_options($this->db->get('cms_menu_grup'));
			$data['allowed'] = get_options($this->db->get('master_level'));
			$content = $this->load->view('cms/manage/form_add_menu',$data,true);
			$header = "Form Tambah Menu";
			$subheader = "Silakan masukkan keterangan menu pada form di bawah ini.";
			$buttons[] = button('document.faddmenu.reset()','Reset Form','btn btn-default');
			$buttons[] = button('load_silent("cms/manage/menu","#content")','Batalkan','btn btn-danger');
			echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
		}
		else
		{
			$datapost = get_post_data(array('nama','deskripsi','alias','allowed_level','url','aktif','urutan','grup'));
			$this->m_menu->save_menu($datapost);
			$this->fungsi->run_js('load_silent("cms/manage/menu","#content")');
			$this->fungsi->message_box("Data menu berhasil disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah menu dengan data sbb:",true);
		}
	}
	public function edit_menu()
	{
		$this->fungsi->check_previleges('menu');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama',
					'label' => 'Nama',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'deskripsi',
					'label' => 'Deskripsi',
					'rules' => 'trim|required'
				),

				array(
					'field'	=> 'allowed_level[]',
					'label' => 'Allowed Level',
					'rules' => 'required'
				),
				array(
					'field'	=> 'url',
					'label' => 'URI',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'aktif',
					'label' => 'Aktif',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'urutan',
					'label' => 'Urutan',
					'rules' => 'required|numeric'
				),
				array(
					'field'	=> 'grup',
					'label' => 'Grup',
					'rules' => 'trim|required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['grup'] = get_options($this->db->get('cms_menu_grup'));
			$data['allowed'] = get_options($this->db->get('master_level'));
			$data['edit_menu'] = $this->db->get_where('cms_menu',array('id'=>$id));
			$content = $this->load->view('cms/manage/form_edit_menu',$data,true);
			$header = "Form Edit Menu";
			$subheader = "Silakan masukkan keterangan menu pada form di bawah ini.";
			$buttons[] = button('document.feditmenu.reset()','Reset Form','btn btn-default');
			$buttons[] = button('load_silent("cms/manage/menu","#content")','Batalkan','btn btn-danger');
			echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
		}
		else
		{
			$datapost = get_post_data(array('id','nama','deskripsi','allowed_level','url','aktif','urutan','grup'));
			$this->m_menu->save_menu($datapost,false);
			$this->fungsi->run_js('load_silent("cms/manage/menu","#content")');
			//$this->fungsi->message_box("Data menu berhasil diupdate...","success");
			$this->fungsi->catat($datapost,"Mengedit menu dengan data sbb:",true);
		}
	}
	public function delete_menu()
	{
		$this->fungsi->check_previleges('menu');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->m_menu->delete_menu($id);
		$this->fungsi->run_js('load_silent("cms/manage/menu","#content")');
		$this->fungsi->message_box("Data menu berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus menu dengan id ".$id);
	}
	function alias_unique($str)
	{
		$this->db->where('alias',$str);
		$query = $this->db->get('cms_menu');
		if ($query->num_rows() > 0)
		{
			$this->form_validation->set_message('alias_unique', 'alias "'.$str.'" sudah dipakai.');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	/* MENU GRUP  */
	public function menu_grup()
	{
		$this->fungsi->check_previleges('menu');
		$content = $this->load->view('cms/manage/menu_grup','',true);
		$header = "Manajemen Grup Menu";
		$subheader = "Panel ini digunakan untuk memanajemen grup/kelompok menu";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
	}
	public function show_menu_grup()
	{
		$this->fungsi->check_previleges('menu');
		$data['grup'] = $this->db->get('cms_menu_grup');
		$this->load->view('cms/manage/menu_grup_table',$data);
	}
	public function add_menu_grup()
	{
		$this->fungsi->check_previleges('menu');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_grup',
					'label' => 'Nama Grup Menu',
					'rules' => 'trim|required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('cms/manage/menu_grup_form_add');
		}
		else
		{
			$datapost = get_post_data(array('nama_grup'));
			$this->m_menu->save_menu_grup($datapost);
			$this->show_menu_grup();
			$this->fungsi->catat($datapost,"Menambah grup menu dengan data sbb:",true);
		}
	}
	public function edit_menu_grup()
	{
		$this->fungsi->check_previleges('menu');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_grup',
					'label' => 'Nama Grup Menu',
					'rules' => 'trim|required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['grupedit'] = $this->db->get_where('cms_menu_grup',array('id_grup_menu'=>$id));
			$this->load->view('cms/manage/menu_grup_form_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_grup_menu','nama_grup'));
			$this->m_menu->save_menu_grup($datapost,false);
			$this->show_menu_grup();
			$this->fungsi->catat($datapost,"Mengedit grup menu dengan data sbb:",true);
		}
	}
	public function delete_menu_grup()
	{
		$this->fungsi->check_previleges('menu');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->m_menu->delete_menu_grup($id);
		$this->show_menu_grup();
		$this->fungsi->catat("Menghapus grup menu dengan id ".$id);
	}
}