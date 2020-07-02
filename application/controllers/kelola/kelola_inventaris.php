<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_inventaris extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_inventaris');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_inventaris');
		$data['kelola_inventaris'] = $this->m_kelola_inventaris->getData();
		$data['lokasi_penyimpanan']  = get_options($this->db->query('select nama_lokasi_penyimpanan, nama_lokasi_penyimpanan from lokasi_penyimpanan'),true);
		$data['sumber_pendanaan']  = get_options($this->db->query('select sumber_pendanaan, sumber_pendanaan from master_sumber_pendanaan'),true);
		$this->load->view('kelola/kelola_inventaris/v_kelola_inventaris_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Inventaris";
		$subheader = "kelola_inventaris";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_inventaris/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_inventaris/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_inventaris');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['lokasi_penyimpanan']  = get_options($this->db->query('select nama_lokasi_penyimpanan, nama_lokasi_penyimpanan from lokasi_penyimpanan'),true);
			$data['sumber_pendanaan']  = get_options($this->db->query('select sumber_pendanaan, sumber_pendanaan from master_sumber_pendanaan'),true);
			$this->load->view('kelola/kelola_inventaris/v_kelola_inventaris_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode_inventaris','kode_simak','lokasi_penyimpanan','sumber_pendanaan','harga','tanggal_pembelian','kondisi','status'));
			$this->m_kelola_inventaris->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_inventaris","#content")');
			$this->fungsi->message_box("Data Kelola Inventaris sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola inventaris dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_inventaris');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_inventaris',array('id'=>$id));
			$data['status']='';
			$data['lokasi_penyimpanan']  = get_options($this->db->query('select nama_lokasi_penyimpanan, nama_lokasi_penyimpanan from lokasi_penyimpanan'),true);
			$data['sumber_pendanaan']  = get_options($this->db->query('select sumber_pendanaan, sumber_pendanaan from master_sumber_pendanaan'),true);
			$this->load->view('kelola/kelola_inventaris/v_kelola_inventaris_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode_inventaris','kode_simak','lokasi_penyimpanan','sumber_pendanaan','harga','tanggal_pembelian','kondisi','status'));
			$this->m_kelola_inventaris->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_inventaris","#content")');
			$this->fungsi->message_box("Data Kelola Inventaris sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola inventaris dengan data sbb:",true);
		}
	}
		public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kelola_inventaris->deleteData($id);
		redirect('admin');
	}
}