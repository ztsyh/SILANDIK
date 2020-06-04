<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class File extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_file');
	}
	public function index()
	{
		$this->fungsi->check_previleges('file');
		$this->load->view('cms/file/panel');
		// clear sessions
		if(from_session('offset'))
			$this->session->unset_userdata('offset');
	}
	public function file_list()
	{
		$this->fungsi->check_previleges('file');
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
		$data['data'] = $this->m_file->get_file_list(false,'',$perpage,$offset);
		$total_rows = $this->m_file->get_file_list(true,'');
		$data['paging'] = $this->fungsi->create_paging('cms/file/file_list/',$total_rows,$perpage,4);
		$data['datainfo'] = parse_infotable($offset,$perpage,$total_rows,"file");
		$data['offset'] = $offset;
		$this->load->view('cms/file/file_list',$data);
	}
	public function add_file()
	{
		$this->fungsi->check_previleges('file');
		$this->load->library('form_validation');
		$this->load->helper('asset');
		$config = array(
				array(
					'field'	=> 'title',
					'label' => 'Judul',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'desc',
					'label' => 'Deskripsi',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'ufile',
					'label' => 'File',
					'rules' => 'trim|required|numeric'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<br /><span class="message-box error">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$content = $this->load->view('cms/file/form_upload_file','',true);
			$header = "Form Upload File";
			$subheader = "Silakan lengkapi form di bawah ini untuk upload file";
			$buttons[] = "";
			echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
		}
		else
		{
			$datapost = get_post_data(array('desc','title','ufile'));
			$idforum = $this->m_file->save_file($datapost);
			$this->fungsi->run_js('load_silent("cms/file/file_list","#subcontent")');
			$this->fungsi->message_box("File Upload berhasil disimpan...","success");
			$this->fungsi->catat($datapost,"Mengupload file baru dengan data sbb:",true);
		}
	}
	public function list_file()
	{
		$this->fungsi->check_previleges('file');
		$list = $this->uri->segment(4);
		echo $this->m_file->list_file_upload(explode('_',$list));
	}
	public function upload_file()
	{
		$this->fungsi->check_previleges('file');
		$upload_folder = get_upload_folder('./files/upload-file/');

		$config['upload_path'] = $upload_folder;
		$config['allowed_types'] = 'gif|jpg|jpeg|png|doc|xls|ppt|pdf|txt|csv';
		$config['max_size']	= '5000';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';

		$this->load->library('upload', $config);
		$err = "";
		$msg = "";
		if ( ! $this->upload->do_upload('ufile'))
		{
			$err = $this->upload->display_errors('<span class="error_string">','</span>');
		}
		else
		{
			$data = $this->upload->data();
			$saved_data = array(
					'title'		=>$data['file_name'],
					'slug'		=>url_title($data['raw_name'],'dash',true),
					'desc'		=>$data['file_name'],
					'filename'	=>$data['file_name'],
					'filepath'	=>$upload_folder,
					'type'		=>$data['file_type'],
					'size'		=>$data['file_size'],
					'upload_date'	=>time(),
					'hits'		=>0,
					'user'		=>from_session('user_id')
				);
			$this->db->insert('cms_file_upload',$saved_data);
			$msg = $this->db->insert_id().'#'.$data['orig_name'].' ('.$data['file_type'].')';
		}
		echo "{";
		echo	   "error: '" . $err . "',\n";
		echo	   "msg: '" . $msg . "'\n";
		echo "}";
	}
	public function delete_file()
	{
		$this->fungsi->check_previleges('file');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$filename = $this->m_file->delete_file($id);
		$this->fungsi->run_js('load_silent("cms/file/file_list","#subcontent")');
		$this->fungsi->message_box("File ".$filename." sukses dihapus...","notice");
		$this->fungsi->catat("Menghapus file dengan nama ".$filename);
	}
}