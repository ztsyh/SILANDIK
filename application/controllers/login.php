<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('auth');
		$this->load->helper('asset');
		$this->load->model('cms/m_login');
		$this->load->model('cms/m_manage');
		
		$CI = &get_instance();
		// $this->db_auth = $CI->load->database('db_auth', TRUE);
	}
	public function index()
	{
		if($this->fungsi->logged_in())
		{
			$this->admin_page();
		}
		else
		{
			$this->login();
		}
	}
	
	public function username_check($str)
	{
		$this->db->where('username',$str);
		$query = $this->db->get('cms_user_define_level');
		if ($query->num_rows() > 0)
		{
			$this->form_validation->set_message('username_check', 'username "'.$str.'" sudah dipakai.');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	public function login()
	{
		$this->fungsi->restrict(true);

		$this->load->library('form_validation');
		$this->load->library('My_Form_validation');
		$this->load->helper('captcha');

		$data['captcha'] = $this->_set_captcha();

		$this->form_validation->set_rules('username', 'Username', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		$this->form_validation->set_rules('captcha', 'Captcha', 'trim|required|callback_valid_captcha');
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('cms/login',$data);
		}
		else
		{
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$object = array(
				'last_login' => date('Y-m-d H:i:s'), );
			$this->db->where('username', $username);
			$this->db->update('cms_user', $object);

			$login = array(
				'username'=>$username,
				'password'=>$password,
			);
			$return = $this->auth->process_login($login);
			if($return)
			{
				echo $this->fungsi->warning('Selamat datang, '.from_session('nama'),site_url('admin'));
			}
			else
			{
				echo $this->fungsi->warning('Username/password tidak cocok',site_url('login'));
			}
		}
	}
	public function logout()
	{
		$this->auth->logout();
		echo $this->fungsi->warning('Anda sukses logout dari '.$this->config->item('project'),site_url());
	}
	private function _set_captcha()
	{
		$this->load->helper('string');
		$vals = array(
			'img_path' => './assets/captcha/',
			'img_url' => base_url().'/assets/captcha/',
			'font_path' => './assets/fonts/Arial.ttf',
			'img_width' => '120',
			'img_height' => 30,
			'expiration' => 7200,
			'word'	=>random_string('numeric', 6)
		);

		$cap = create_captcha($vals);

		$data = array(
			'captcha_time' => $cap['time'],
			'ip_address' => $this->input->ip_address(),
			'word' => $cap['word']
		);

		$query = $this->db->insert_string('cms_captcha', $data);
		$this->db->query($query);
		return $cap;
	}
	function valid_captcha($str)
	{
		// First, delete old captchas
		$expiration = time()-7200; // Two hour limit
		$this->db->query("DELETE FROM cms_captcha WHERE captcha_time < ".$expiration);

		// Then see if a captcha exists:
		$sql = "SELECT COUNT(*) AS count FROM cms_captcha WHERE word = ? AND ip_address = ? AND captcha_time > ?";
		$binds = array($str, $this->input->ip_address(), $expiration);
		$query = $this->db->query($sql, $binds);
		$row = $query->row();

		if ($row->count == 0)
		{
			$this->form_validation->set_message('valid_captcha', 'Capctha tidak valid');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	
 	public function admin_page()
	{
		$this->fungsi->check_previleges('semua');
		$this->load->model('cms/m_menu');
		$data['level'] = from_session('level');
		$data['menu'] = $this->m_menu->get_menu(from_session('level'));
		$this->load->view('cms/weel',$data);
	}

}

/* End of file login.php */
/* Location: ./application/controllers/cms/login.php */