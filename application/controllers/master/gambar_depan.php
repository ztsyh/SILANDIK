<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class gambar_depan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_gambar_depan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('gambar_depan');
		$data['gambar_depan'] = $this->m_gambar_depan->getData()->result();
		$this->load->view('master/gambar_depan/v_gambar_depan_list',$data);
	}

}

/* End of file nama_alat.php */
/* Location: ./application/controllers/master/nama_alat.php */