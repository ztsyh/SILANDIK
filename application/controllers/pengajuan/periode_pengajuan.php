<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class periode_pengajuan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_periode_pengajuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$data['periode_pengajuan'] = $this->m_periode_pengajuan->getData();
		$data['sumber_pendanaan']  = get_options($this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan'),true);
		$data['status_pengajuan']  = get_options($this->db->query('select id, status_pengajuan from status_pengajuan'),true);
		$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Periode Pengajuan";
		$subheader = "periode_pengajuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_addForm/","#divsubcontent")');	
        }
        if($param=='base1'){
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_viewForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
                array(
					'field'	=> 'semester',
					'label' => 'semester',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'tgl_pengajuan',
					'label' => 'tgl_pengajuan',
					'rules' => 'required'
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
			$data['status']='';
			$data['sumber_pendanaan']  = get_options($this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan'),true);
			$data['status_pengajuan']  = get_options($this->db->query('select id, status_pengajuan from status_pengajuan'),true);
			// Mendapatkan dan men-generate kode transaksi barang masuk
            $kode = 'P-PGN-' . date('ymd');
            $kode_terakhir = $this->m_periode_pengajuan->getMax('periode_pengajuan', 'id', $kode);
            $kode_tambah = substr($kode_terakhir, -5, 5);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
            $data['id'] = $kode . $number;
			$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','semester','tgl_pengajuan','sumber_pendanaan','tgl_pendanaan_turun','pajak','status_pengajuan','status'));
			$this->m_periode_pengajuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data Periode Pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Pengajuan Periode_pengajuan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'id',
				'label' => 'wes mbarke',
				'rules' => ''
			),
			array(
                'field'	=> 'id',
                'label' => 'id',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'semester',
                'label' => 'semester',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'tgl_pengajuan',
                'label' => 'tgl_pengajuan',
                'rules' => 'required'
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
			$data['edit'] = $this->db->get_where('periode_pengajuan',array('id'=>$id));
			$data['sumber_pendanaan']  = get_options($this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan'),true);
			$data['status_pengajuan']  = get_options($this->db->query('select id, status_pengajuan from status_pengajuan'),true);
			$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','semester','tgl_pengajuan','sumber_pendanaan','tgl_pendanaan_turun','pajak','status_pengajuan','status'));
			$this->m_periode_pengajuan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data Periode Pengajuan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Pengajuan periode_pengajuan dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_periode_pengajuan->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
		$this->fungsi->message_box("Data Periode Pengajuan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}

}
	