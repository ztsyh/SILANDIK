<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_sumber_pendanaan extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('master_sumber_pendanaan msp');
		$this->db->order_by('msp.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('master_sumber_pendanaan',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_sumber_pendanaan',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_sumber_pendanaan');
	}

}