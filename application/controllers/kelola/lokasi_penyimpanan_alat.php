<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lokasi_penyimpanan_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_lokasi_penyimpanan_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan_alat');
		$data['lokasi_penyimpanan_alat'] = $this->m_lokasi_penyimpanan_alat->getData();
		$this->load->view('kelola/lokasi_penyimpanan_alat/v_lokasi_penyimpanan_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Lokasi Penyimpanan Alat";
		$subheader = "Lokasi Penyimpanan Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/lokasi_penyimpanan_alat/v_lokasi_penyimpanan_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('no','id','kode_alat','kode_rak','urutan'));
			$this->m_lokasi_penyimpanan_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan_alat","#content")');
			$this->fungsi->message_box("Data lokasi penyimpanan alat sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah data lokasi penyimpanan alat dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('lokasi_penyimpanan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('lokasi_penyimpanan_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/lokasi_penyimpanan_alat/v_lokasi_penyimpanan_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('no','id','kode_alat','kode_rak','urutan'));
			$this->m_lokasi_penyimpanan_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/lokasi_penyimpanan_alat","#content")');
			$this->fungsi->message_box("Data lokasi penyimpanan alat sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit data lokasi penyimpanan alat dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_lokasi_penyimpanan_alat->deleteData($id);
                redirect('admin');
            }
}
