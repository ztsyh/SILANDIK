<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
	}

	public function index()
	{
		$this->status_pak();
	}

	public function status_pak()
	{
		$this->load->view('v_dashboard');
	}
}

/* End of file dashboard.php */
/* Location: ./application/controllers/pak/dashboard.php */