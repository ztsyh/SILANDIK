<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_cek');
	}

	public function index()
	{
		$this->fungsi->check_previleges('cek');
		$data['cek'] = $this->m_cek->getData();
		$this->load->view('peminjaman/cek/v_cek_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form peminjaman Cek";
		$subheader = "cek";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}



}
