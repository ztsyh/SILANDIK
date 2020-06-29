<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_instansi extends CI_Model {

	public function getEdit($value='')
	{
		$this->db->where('id', $value);
		return $this->db->get('master_instansi');
	}

	public function updateData($object='')
	{
		$this->db->where('id', '1');
		$this->db->update('master_instansi', $object);
	}

}

/* End of file m_instansi.php */
/* Location: ./application/models/master/m_instansi.php */