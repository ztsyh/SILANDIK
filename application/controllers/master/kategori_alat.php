<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kategori_alat');
		$data['kategori_alat'] = $this->m_kategori_alat->getData();
		$this->load->view('master/kategori_alat/v_kategori_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori Alat";
		$subheader = "Kategori Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/kategori_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/kategori_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kategori_alat');
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
			$this->load->view('master/kategori_alat/v_kategori_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','kategori','keterangan'));
			$this->m_kategori_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_alat","#content")');
			$this->fungsi->message_box("Data master kategori alat sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah master kategori alat dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kategori_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
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
			$data['edit'] = $this->db->get_where('master_kategori_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori_alat/v_kategori_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','kategori','keterangan'));
			$this->m_kategori_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_alat","#content")');
			$this->fungsi->message_box("Data master kategori alat sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit master kategori alat dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kategori_alat->deleteData($id);
                redirect('admin');
            }
}
