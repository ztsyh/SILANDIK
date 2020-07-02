<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_nama_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('master_nama_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
        $this->db->insert('master_nama_alat',$data);  
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_nama_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_nama_alat');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */