<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nama_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_nama_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('nama_alat');
		$data['nama_alat'] = $this->m_nama_alat->getData();
		$this->load->view('master/nama_alat/v_nama_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Nama Alat";
		$subheader = "nama_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/nama_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/nama_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('nama_alat');
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
			$this->load->view('master/nama_alat/v_nama_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','keterangan'));
			$this->m_nama_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master nama_alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('nama_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
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
			$data['edit'] = $this->db->get_where('master_nama_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/nama_alat/v_nama_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','keterangan'));
			$this->m_nama_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master Nama Alat dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_nama_alat->deleteData($id);
		redirect('admin');
	}
}