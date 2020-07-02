<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kelola_laboratorium extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
        $this->load->model('kelola/m_kelola_alat');
        $this->load->model('kelola/m_kelola_seri');
        $this->load->model('kelola/m_kelola_inventaris');
        $this->load->library('form_validation');
	}

	public function index()
	{
		$this->load->view('kelola/kelola_laboratorium/v_kelola_laboratorium_list');
	}

	public function tampilSeri()
    {
        $data['judul'] = 'Kelola Seri';
        $data['get'] = $this->input->get('id', true);
        $data['kelola_seri'] = $this->m_kelola_seri->getByKelolaAlat($data['get']);
        $this->load->view('kelola/kelola_seri/v_kelola_seri_list', $data);
    }

