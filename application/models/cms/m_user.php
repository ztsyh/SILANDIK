<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {

	public function getList($value='')
	{
		$this->db->join('master_level ml', 'cu.level = ml.id', 'left');
		$this->db->select('cu.*,ml.level');
		
		$this->db->where('cu.level !=', 1);
		return $this->db->get('cms_user cu');
	}

	public function insertData($data='',$new=true)
	{
		if($new)
        {
            $this->db->insert('cms_user',$data);
        }
        else
        {
            $this->db->where('id',$data['id']);
            $this->db->update('cms_user',$data);
        }
	}

}

/* End of file m_user.php */
/* Location: ./application/models/cms/m_user.php */