<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lokasi_penyimpanan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_lokasi_penyimpanan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan');
		$data['lokasi_penyimpanan'] = $this->m_lokasi_penyimpanan->getData();
		$this->load->view('kelola/lokasi_penyimpanan/v_lokasi_penyimpanan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Lokasi Penyimpanan";
		$subheader = "Lokasi Penyimpanan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_lokasi_penyimpanan',
					'label' => 'nama_lokasi_penyimpanan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/lokasi_penyimpanan/v_lokasi_penyimpanan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_lokasi_penyimpanan'));
			$this->m_lokasi_penyimpanan->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan","#content")');
			$this->fungsi->message_box("Data lokasi penyimpanan sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah data lokasi penyimpanan dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_lokasi_penyimpanan',
					'label' => 'nama_lokasi_penyimpanan',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('lokasi_penyimpanan',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/lokasi_penyimpanan/v_lokasi_penyimpanan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_lokasi_penyimpanan'));
			$this->m_lokasi_penyimpanan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan","#content")');
			$this->fungsi->message_box("Data lokasi penyimpanan sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit data lokasi penyimpanan dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_lokasi_penyimpanan->deleteData($id);
                redirect('admin');
            }
}
