<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class inven_alat_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_inven');
	}

	public function index()
	{
		$this->fungsi->check_previleges('inven_alat_bahan');
		$data['inven_alat_bahan'] = $this->m_inven->getData();
		$this->load->view('kelola/kelola_inventaris/v_inven_alat_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Inventaris Alat Bahan";
		$subheader = "inven_alat_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/inven_alat_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/inven_alat_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('inven_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'alat_bahan',
					'label' => 'alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/inven_alat_bahan/v_inven_alat_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode','alat_bahan','tanggal','keterangan'));
			$this->m_inven->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/inven_alat_bahan","#content")');
			$this->fungsi->message_box("Data Master Inventaris Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master inven_alat_bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('inven_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'alat_bahan',
					'label' => 'alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_inven',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/inven_alat_bahan/v_inven_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','alat_bahan','tanggal','keterangan'));
			$this->m_inven->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/inven_alat_bahan","#content")');
			$this->fungsi->message_box("Data Inventaris Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master inven_alat_bahan dengan data sbb:",true);
		}
	}
		public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_inven->deleteData($id);
		redirect('admin');
	}
}
/* End of file inven_alat_bahan.php */
/* Location: ./application/controllers/master/inven_alat_bahan.php */