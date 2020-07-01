<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_alat extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData();
		$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan from master_satuan'),true);
		$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Alat";
		$subheader = "Pengajuan Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")');	
        }
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
                array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
                ),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan from master_satuan'),true);
		
			// Mendapatkan dan men-generate id periode
            $kode = 'PA-' . date('ymd');
            $kode_terakhir = $this->m_pengajuan_alat->getMax('pengajuan_alat', 'id', $kode);
            $kode_tambah = substr($kode_terakhir, -5, 5);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
            $data['id'] = $kode . $number;
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','merk','seri','estimasi_jumlah','satuan','harga','nama_lab','status'));
			$this->m_pengajuan_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Pengajuan Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Pengajuan Alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
			array(
                'field'	=> 'id',
                'label' => 'id',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'nama_alat',
                'label' => 'nama_alat',
                'rules' => 'required'
            ),
            array(
			)
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_alat',array('id'=>$id));
			$data['satuan']  = get_options($this->db->query('select nama_satuan, nama_satuan from master_satuan'),true);
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','merk','seri','estimasi_jumlah','satuan','harga','nama_lab','status'));
			$this->m_pengajuan_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Pengajuan Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Pengajuan Alat dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pengajuan_alat->deleteData($id);
		redirect('admin');
	}

}
	