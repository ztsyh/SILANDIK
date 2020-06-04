<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {


	public function __construct()
	{
		parent::__construct();

		$this->load->helper('asset');
		$this->load->model('cms/m_manage');
	}
	public function index()
	{
		
		$this->fungsi->check_previleges('semua');
		$this->load->model('cms/m_menu');
		$data['menu'] = $this->m_menu->get_menu(from_session('level'));
		// $data['level'] = $this->m_manage->get_level();
		$this->load->view('cms/weel',$data);
		
	}
	public function ubah_level()
	{
		$this->fungsi->check_previleges('semua');
		$id=$this->uri->segment(4);
		$this->m_manage->ubah_level($id);
		echo $this->fungsi->warning('Anda sukses Berganti Level',site_url().'cms/admin');
	}
	public function header()
	{
		$this->load->view('header');
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */