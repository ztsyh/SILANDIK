<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Catatan extends CI_Controller {

public function __construct()
{
	parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_catatan');
}
	public function catat()
	{
		$this->fungsi->check_previleges('log');
		$offset = $this->uri->segment(4,0);
		$perpage = 10;
		$data['user'] = $this->m_catatan->get_user(false,'',$perpage,$offset);
		$total_rows = $this->m_catatan->get_user(true,'');
		$data['paging'] = $this->fungsi->create_paging('cms/catatan/catat',$total_rows,$perpage,4);
		$data['datainfo'] = parse_infotable($offset,$perpage,$total_rows);
		$this->load->view('cms/manage/catatan',$data);
	}
	public function catat2()
	{
		$this->fungsi->check_previleges('log_s');
		$offset = $this->uri->segment(4,0);
		$perpage = 10;
		$data['user'] = $this->m_catatan->get_user(false,'',$perpage,$offset);
		$total_rows = $this->m_catatan->get_user(true,'');
		$data['paging'] = $this->fungsi->create_paging('cms/catatan/catat',$total_rows,$perpage,4);
		$data['datainfo'] = parse_infotable($offset,$perpage,$total_rows);
		$this->load->view('cms/manage/catatan',$data);
	}
	public function search_user()
	{
		$this->fungsi->check_previleges('log');
		$offset = $this->uri->segment(5,0);
		if($offset>0){
			$keyword=from_session('keyword');
		}else{
		$keyword = $this->input->post('keyword');
		$this->session->set_userdata('keyword',$keyword);
		$keyword = from_session('keyword');
		}

		$perpage = 10;
		$data['user'] = $this->m_catatan->get_user(false,$keyword,$perpage,$offset);
		$total_rows = $this->m_catatan->get_user(true,$keyword);
		$data['paging'] = $this->fungsi->create_paging('cms/catatan/search_user/'.$offset,$total_rows,$perpage,5);
		$data['datainfo'] = parse_infotable($offset,$perpage,$total_rows);
		$data['search'] = true;
		$this->load->view('cms/manage/catatan',$data);
	}

}

/* End of file catatan.php */
/* Location: ./application/controllers/cms/catatan.php */