<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$data['pengajuan_bahan'] = $this->m_pengajuan_bahan->getData();
		$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Bahan";
		$subheader = "Pengajuan Bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
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
			$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','nama_bahan','jenis','keterangan','id_status'));
			$this->m_pengajuan_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data pengajuan bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
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
			$data['edit'] = $this->db->get_where('pengajuan_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','nama_bahan','jenis','keterangan'));
			$this->m_pengajuan_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data pengajuan bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan bahan dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pengajuan_bahan->deleteData($id);
		redirect('admin');
	}
	}
