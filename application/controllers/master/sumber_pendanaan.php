<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sumber_pendanaan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_sumber_pendanaan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('sumber_pendanaan');
		$data['sumber_pendanaan'] = $this->m_sumber_pendanaan->getData();
		$this->load->view('master/sumber_pendanaan/v_sumber_pendanaan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Sumber Pendanaan";
		$subheader = "Sumber Pendanaan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/sumber_pendanaan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/sumber_pendanaan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('sumber_pendanaan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'sumber_pendanaan',
					'label' => 'sumber_pendanaan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/sumber_pendanaan/v_sumber_pendanaan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','sumber_pendanaan','status'));
			$this->m_sumber_pendanaan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/sumber_pendanaan","#content")');
			$this->fungsi->message_box("Data master sumber pendanaan sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah master sumber pendanaan dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('sumber_pendanaan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'sumber_pendanaan',
					'label' => 'sumber_pendanaan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_sumber_pendanaan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/sumber_pendanaan/v_sumber_pendanaan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','sumber_pendanaan','status'));
			$this->m_sumber_pendanaan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/sumber_pendanaan","#content")');
			$this->fungsi->message_box("Data master sumber pendanaan sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit master sumber pendanaan dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_sumber_pendanaan->deleteData($id);
                redirect('admin');
            }
}