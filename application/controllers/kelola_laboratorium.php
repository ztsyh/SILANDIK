<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_laboratorium extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_laboratorium');
	}

	public function index()
	{
		$this->fungsi->check_previleges('laboratorium');
		$data['laboratorium'] = $this->m_laboratorium->getData();
		$this->load->view('kelola/laboratorium/v_laboratorium_list',$data);
	}
	
    public function formadd($value='')
	{
		$this->fungsi->check_previleges('laboratorium');
		$data['status']  = get_options($this->db->query('select id, status from master_status'),true);
		$this->load->view('kelola/laboratorium/v_laboratorium_add',$data);
	}
	public function formedit($value='')
	{
		$this->fungsi->check_previleges('laboratorium');
		$data['status']  = get_options($this->db->query('select id, status from master_status'),true);
		$this->load->view('kelola/laboratorium/v_laboratorium_edit',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Laboratorium";
		$subheader = "laboratorium";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/laboratorium/show_addForm/","#divsubcontent")');	
		}else if($base_kom=$this->uri->segment(5)){
		
			$this->fungsi->run_js('load_silent("kelola/laboratorium/show_editForm/'.$base_kom.'","#divsubcontent")');	
			
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/laboratorium/show_deleteForm/'.$base_kom.'","#divsubcontent")');
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('laboratorium');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_lab',
					'label' => 'nama_lab',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']  = get_options($this->db->query('select id, status from master_status'),true);
			$this->load->view('kelola/laboratorium/v_laboratorium_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_lab','alamat_lab','korlab','laboran','status'));
			$this->m_laboratorium->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/laboratorium","#content")');
			$this->fungsi->message_box("Data Kelola laboratorium sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah kelola_laboratorium dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('laboratorium');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_lab',
					'label' => 'nama_lab',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_laboratorium',array('id'=>$id));
			$data['status']  = get_options($this->db->query('select id, status from master_status'),true);
			$this->load->view('kelola/laboratorium/v_laboratorium_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_lab','alamat_lab','korlab','laboran','status'));
			$this->m_laboratorium->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/laboratorium","#content")');
			$this->fungsi->message_box("Data Kelola laboratorium sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit kelola_laboratorium dengan data sbb:",true);
		}
	}
	public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_laboratorium->deleteData($id);
				redirect('admin');
				$this->load->view('kelola/laboratorium/v_laboratorium_list');
            }	
	
}
