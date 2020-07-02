<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kategori');
		$data['kategori'] = $this->m_kategori->getData();
		$this->load->view('master/kategori/v_kategori_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori";
		$subheader = "Kategori";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/kategori/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/kategori/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kategori');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'kategori',
					'label' => 'kategori',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/kategori/v_kategori_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kategori'));
			$this->m_kategori->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori","#content")');
			$this->fungsi->message_box("Data master kategori sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah master kategori dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kategori');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'kategori',
					'label' => 'kategori',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_kategori',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori/v_kategori_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kategori'));
			$this->m_kategori->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori","#content")');
			$this->fungsi->message_box("Data master kategori sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit master kategori dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kategori->deleteData($id);
                redirect('admin');
            }
}
