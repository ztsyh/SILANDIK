<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kategori_bahan');
		$data['kategori_bahan'] = $this->m_kategori_bahan->getData();
		$this->load->view('master/kategori_bahan/v_kategori_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori Bahan";
		$subheader = "Kategori Bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/kategori_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/kategori_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kategori_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/kategori_bahan/v_kategori_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kategori_bahan','kategori','keterangan'));
			$this->m_kategori_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_bahan","#content")');
			$this->fungsi->message_box("Data master kategori bahan sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah master kategori bahan dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kategori_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_kategori_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori_bahan/v_kategori_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','kategori','keterangan'));
			$this->m_kategori_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_bahan","#content")');
			$this->fungsi->message_box("Data master kategori alat sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit master kategori alat dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kategori_bahan->deleteData($id);
                redirect('admin');
            }
}
