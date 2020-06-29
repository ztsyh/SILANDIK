<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Peminjaman_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_peminjaman_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$data['peminjaman_bahan'] = $this->m_peminjaman_bahan->getData();
		$this->load->view('peminjaman/peminjaman_bahan/v_peminjaman_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman";
		$subheader = "nama_peminjaman";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/peminjaman_bahan/v_peminjaman_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_peminjaman','tanggal_pinjam','tanggal_kembali','jumlah','id_barang','status','nama_peminjam','kebutuhan'));
			$this->m_peminjaman_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Peminjaman dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('peminjaman_bahan',array('id_peminjaman'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/peminjaman_bahan/v_peminjaman_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_peminjaman','tanggal_pinjam','tanggal_kembali','jumlah','id_barang','status','nama_peminjam','kebutuhan'));
			$this->m_peminjaman_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman dengan data sbb:",true);
		}
	}
	public function delete($id)
    {
        
		// if($id == '' || !is_numeric($id)) die;
		$this->m_peminjaman_bahan->deleteData($id);
		$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan","#content")');
		$this->fungsi->message_box("Data Peminjaman Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    
	}
}

/* End of file peminjaman.php */
/* Location: ./application/controllers/master/peminjaman.php */
