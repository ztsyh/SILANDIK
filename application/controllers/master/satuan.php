<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Satuan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_satuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('satuan');
		$data['satuan'] = $this->m_satuan->getData();
		$this->load->view('master/satuan/v_satuan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Satuan";
		$subheader = "Satuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/satuan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/satuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('satuan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_satuan',
					'label' => 'nama_satuan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/satuan/v_satuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_satuan','keterangan'));
			$this->m_satuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/satuan","#content")');
			$this->fungsi->message_box("Data master satuan sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah master satuan dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('satuan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_satuan',
					'label' => 'nama_satuan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_satuan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/satuan/v_satuan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_satuan','keterangan'));
			$this->m_satuan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/satuan","#content")');
			$this->fungsi->message_box("Data master satuan sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit master satuan dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_satuan->deleteData($id);
                redirect('admin');
            }
}

/* End of file satuan.php */
/* Location: ./application/controllers/master/satuan.php */