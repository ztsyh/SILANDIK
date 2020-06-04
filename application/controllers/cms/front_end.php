<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_end extends CI_Controller {


	public function __construct()
	{
		parent::__construct();

		$this->load->helper('asset');
		$this->load->model('cms/m_web');
	}
	public function index()
	{
		$data['berita']=$this->m_web->get_recent_article(10);
		$this->load->view('cms/front',$data);
	}
	public function show_berita($alamat)
	{
		$berita=$this->m_web->get_single_post($alamat);
		$content = $this->load->view('cms/baca_berita',$berita,true);
		$header = $berita->judul_berita;
		$subheader = 'Berita ini dikategorikan dalam'.$berita->catname;
		$buttons[] = button('','Tutup','btn btn-primary','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
	}
	public function baca_berita($id)
	{
		echo "sdsdsds";
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/Front_end.php */