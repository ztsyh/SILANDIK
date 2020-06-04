<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Article extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_article');
	}

	public function index()
	{
		$this->fungsi->check_previleges('artikel');
		$offset = $this->uri->segment(4,0);
		if($offset == 0)
		{
			if(from_session('offset') == '')
			{
				$offset = from_session('offset');
			}
		}
		$this->session->set_userdata('offset',$offset);
		$perpage = 10;
		$data['data'] = $this->m_article->get_article_list(false,'',$perpage,$offset);
		$total_rows = $this->m_article->get_article_list(true,'');
		$data['paging'] = $this->fungsi->create_paging('cms/article/article_list/',$total_rows,$perpage,4);
		$data['datainfo'] = parse_infotable($offset,$perpage,$total_rows,"artikel");
		$data['offset'] = $offset;
		$this->load->view('cms/article/article_list',$data);
	}
	public function add_new_article()
	{
		$this->fungsi->check_previleges('artikel');
		$this->load->library('form_validation');
		$this->load->helper('asset');
		$config = array(
				array(
					'field'	=> 'judul_berita',
					'label' => 'Judul',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'isi_berita',
					'label' => 'Isi',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'category',
					'label' => 'Kategori',
					'rules' => 'trim|numeric'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="message-box error">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['category'] = get_options($this->db->get('cms_kategori_berita'));
			$content = $this->load->view('cms/article/form_new_article',$data,true);
			$header = "Tulis Artikel Baru";
			$subheader = "Silakan lengkapi form di bawah ini sebelum menyimpan artikel";
			$buttons[] = "";
			echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
		}
		else
		{
			$datapost = get_post_data(array('isi_berita','judul_berita','category'));
			$this->m_article->save_article($datapost);
			$this->fungsi->run_js('load_silent("cms/article","#content")');
			$this->fungsi->message_box("Artikel baru berhasil disimpan...","success");
			$this->fungsi->catat($datapost,"Menulis artikel baru dengan data sbb:",true);
		}
	}
	public function edit_article()
	{
		$this->fungsi->check_previleges('artikel');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->load->library('form_validation');
		$this->load->helper('asset');
		$config = array(
				array(
					'field'	=> 'judul_berita',
					'label' => 'Judul',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'isi_berita',
					'label' => 'Isi',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'category',
					'label' => 'Kategori',
					'rules' => 'trim|numeric'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="message-box error">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['article_edit'] = $this->db->get_where('cms_berita',array('id_berita'=>$id));
			$data['category'] = get_options($this->db->get('cms_kategori_berita'));
			$content = $this->load->view('cms/article/form_edit_article',$data,true);
			$header = "Edit Artikel";
			$subheader = "Silakan lengkapi form di bawah ini sebelum menyimpan artikel";
			$buttons[] = "";
			echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
		}
		else
		{
			$datapost = get_post_data(array('id_berita','isi_berita','judul_berita','category'));
			$idforum = $this->m_article->save_article($datapost,true);
			$this->fungsi->run_js('load_silent("cms/article","#content")');
			$this->fungsi->message_box("Artikel berhasil diupdate...","success");
			$this->fungsi->catat($datapost,"Mengupdate artikel dengan data sbb:",true);
		}
	}
	public function delete_article()
	{
		$this->fungsi->check_previleges('artikel');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->m_article->delete_article($id);
		$this->fungsi->run_js('load_silent("cms/article","#content")');
		$this->fungsi->catat("Menghapus artikel dengan id ".$id);
	}
	/* KATEGORI  */
	public function category()
	{
		$this->fungsi->check_previleges('artikel');
		$data['url']='cms/article/category_list/';
		$content = $this->load->view('utility/load_url_sub_content',$data,true);
		$header = "Manajemen Kategori";
		$subheader = "Panel ini digunakan untuk memanajemen kategori artikel";
		$buttons[] = button('','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
	}
	public function category_list()
	{
		$this->fungsi->check_previleges('artikel');
		$data['grup'] = $this->db->get('cms_kategori_berita');
		$this->load->view('cms/article/category_list',$data);
	}
	public function add_category()
	{
		$this->fungsi->check_previleges('artikel');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_kategori',
					'label' => 'Nama kategori',
					'rules' => 'trim|required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="message-box error">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('cms/article/category_form_add');
		}
		else
		{
			$datapost = get_post_data(array('nama_kategori'));
			$this->m_article->save_category($datapost);
			$this->category_list();
			$this->fungsi->catat($datapost,"Menambah kategori dengan data sbb:",true);
		}
	}
	public function edit_category()
	{
		$this->fungsi->check_previleges('artikel');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_kategori',
					'label' => 'Nama kategori',
					'rules' => 'trim|required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="message-box error">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['data_edit'] = $this->db->get_where('cms_kategori_berita',array('id_kategori_berita'=>$id));
			$this->load->view('cms/article/category_form_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_kategori_berita','nama_kategori'));
			$this->m_article->save_category($datapost,false);
			$this->category_list();
			$this->fungsi->catat($datapost,"Mengedit kategori dengan data sbb:",true);
		}
	}
	public function delete_category()
	{
		$this->fungsi->check_previleges('artikel');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->m_article->delete_category($id);
		$this->category_list();
		$this->fungsi->catat("Menghapus kategori dengan id ".$id);
	}
}