<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_login extends CI_Model {
	function __construct()
    {
        parent::__construct();
    }
    public function check_email_availablity()
    {
    	$uname = trim($this->input->post('username'));
	    $uname = strtolower($uname);

	    $query = $this->db->query('SELECT * FROM cms_user_define_level where username="'.$uname.'"');

	    if($query->num_rows() > 0)
	    return false;
	    else
	    return true;
    }
    function register($data)
    {
    	$query = $this->db->query('SELECT PASSWORD("'.$data['password'].'") as pwd');
        $rows = $query->row();
        $data['id_user']=$this->db->query('SELECT max(id_user) as max from cms_user')->row()->max+1;
        $data['password'] = $rows->pwd;
    	$data['tanggal_lahir']=$this->fungsi->convert_to_timestamp($data['tanggal_lahir']);
    	$data['aktif']=1;
    	$data['level']=3;
    	$this->db->insert('cms_user', $data);
    }


}

/* End of file m_login.php */
/* Location: ./application/models/cms/m_login.php */