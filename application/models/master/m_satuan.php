<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_satuan extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('master_satuan ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('master_satuan',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_satuan',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_satuan');
	}

}

/* End of file m_satuan.php */
/* Location: ./application/models/master/m_satuan.php */