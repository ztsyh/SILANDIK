<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_catatan extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}

	function get_user($num=false,$keyword='',$perpage='',$offset='')
    {
        $this->db->select('*');
        $this->db->from('cms_log a');
        if($keyword != '')
        {
            $this->db->like('a.user',$keyword);
        }
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('a.time', 'desc');
        return $this->db->get();
    }

}

/* End of file m_catatan.php */
/* Location: ./application/models/cms/m_catatan.php */