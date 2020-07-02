<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$data['kelola_alat'] = $this->m_kelola_alat->getData();
		$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan  from master_satuan'),true);
		$data['nama_alat']  = get_options($this->db->query('select nama_alat, nama_alat from master_nama_alat'),true);
		$this->load->view('kelola/kelola_alat/v_kelola_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Alat";
		$subheader = "Kelola Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan from master_satuan'),true);
			$data['nama_alat']  = get_options($this->db->query('select nama_alat, nama_alat from master_nama_alat'),true);
			$this->load->view('kelola/kelola_alat/v_kelola_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','satuan','status'));
			$this->m_kelola_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola Nama Alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_alat',array('id'=>$id));
			$data['status']='';
			$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan from master_satuan'),true);
			$data['nama_alat']  = get_options($this->db->query('select nama_alat, nama_alat from master_nama_alat'),true);
			$this->load->view('kelola/kelola_alat/v_kelola_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','satuan','status'));
			$this->m_kelola_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Nama Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola Nama Alat dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kelola_alat->deleteData($id);
		redirect('admin');
	}
}