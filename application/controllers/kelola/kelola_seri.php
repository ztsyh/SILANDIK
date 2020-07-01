<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_seri extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_seri');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_seri');
		$data['kelola_seri'] = $this->m_kelola_seri->getData();
		$data['kategori']  = get_options($this->db->query('select kategori, kategori  from master_kategori'),true);
		$this->load->view('kelola/kelola_seri/v_kelola_seri_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Seri";
		$subheader = "Kelola Seri";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_seri/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_seri/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_seri');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'seri',
					'label' => 'seri',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['kategori']  = get_options($this->db->query('select kategori, kategori from master_kategori'),true);
			$this->load->view('kelola/kelola_seri/v_kelola_seri_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kategori','merk','seri','gambar','sop_pengoperasian','sop_pemeliharaan','sop_pemeriksaan','sop_kalibrasi','sop_uji_fungsi','stok','stok_minimal'));
			$this->m_kelola_seri->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_seri","#content")');
			$this->fungsi->message_box("Data Kelola Seri Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola Seri Alat dengan data sbb:",true);
		}
	}
		
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_seri');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'seri',
					'label' => 'seri',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_seri',array('id'=>$id));
			$data['status']='';
			$data['kategori']  = get_options($this->db->query('select kategori, kategori from master_kategori'),true);
			$this->load->view('kelola/kelola_seri/v_kelola_seri_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('kategori','merk','seri','gambar','sop_pengoperasian','sop_pemeliharaan','sop_pemeriksaan','sop_kalibrasi','sop_uji_fungsi','stok','stok_minimal'));
			$this->m_kelola_seri->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_seri","#content")');
			$this->fungsi->message_box("Data Kelola Seri Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola Seri Alat dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kelola_seri->deleteData($id);
		redirect('admin');
	}
}