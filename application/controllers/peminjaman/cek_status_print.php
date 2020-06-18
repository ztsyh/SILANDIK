<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek_status_print extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_cek_status');
	}

	public function index()
	{
		$this->fungsi->check_previleges('cek_status');
		$data['cek_status'] = $this->m_cek_status->getData();
		$this->load->view('peminjaman/cek_status/v_cek_status_print',$data);
    }
}
