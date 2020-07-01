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

	public function tampilMerk()
	{
		$data['judul'] = 'Transaksi Mobil';
		$data['get'] = $this->input->get('id', true);
        $data['merk'] = $this->db->get('merk')->result_array();
        $this->load->view('templates/header', $data);
        $this->load->view('transaksi/mobil/tampilMerk', $data);
        $this->load->view('templates/footer');
	}

	public function tampilMobil($id)
	{
		$data['judul'] = 'Transaksi Mobil';
		$data['mobil'] = $this->m_mobil->getAll();
		$data['get'] = $this->input->get('id', true);
		$data['merk'] = $this->db->get_where('merk', ['idMerk' => $id])->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('transaksi/mobil/tampilMobil', $data);
		$this->load->view('templates/footer');
	}

	public function tambah()
	{
		$this->load->model('m_mobil');
		$data['judul'] = 'Form Transaksi';

		$data['lastId'] = $this->m_transaksi->autoId();
		$data['get'] = $this->input->get('id', true);
        $data['konsumen'] = $this->db->get('konsumen')->result_array();
        $data['pegawai'] = $this->db->get('pegawai')->result_array();
        $data['mobil'] = $this->m_mobil->getById($this->input->get('idMobil', true));
        
        $this->form_validation->set_rules('id', 'ID', 'required|numeric');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('transaksi/mobil/tambah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->m_transaksi->tambahData();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('transaksi');
        }
	}

	public function hapus($id)
	{
		$this->m_transaksi->hapusData($id);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('transaksi');
	}

	public function editTampilMerk()
	{
		$data['judul'] = 'Edit Transaksi Mobil';
		$data['get'] = $this->input->get('id', true);
        $data['merk'] = $this->db->get('merk')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('transaksi/mobil/editTampilMerk', $data);
        $this->load->view('templates/footer');
	}

	public function editTampilMobil($id)
	{
		$this->db->select('*')
            ->from('mobil')
            ->join('warna', 'warna.idWarna=mobil.idWarna');
        $this->db->where('idMerk', $id);
        $query = $this->db->get()->result_array();

		$data['judul'] = 'Transaksi Mobil';
		$data['get'] = $this->input->get('id', true);
		$data['mobil'] = $query;
		$data['merk'] = $this->db->get_where('merk', ['idMerk' => $id])->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('transaksi/mobil/editTampilMobil', $data);
		$this->load->view('templates/footer');
	}

	public function ubah()
	{
		$this->m_transaksi->ubahData();
        $this->session->set_flashdata('flash', 'Diubah');
        redirect('transaksi');
	}
}

/* End of file Transaksi.php */
/* Location: ./application/controllers/Transaksi.php */