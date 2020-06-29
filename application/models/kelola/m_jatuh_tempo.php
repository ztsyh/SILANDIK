<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_jatuh_tempo extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('jatuh_tempo jt');
		$this->db->order_by('jt.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('jatuh_tempo',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('jatuh_tempo',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('jatuh_tempo');
	}

}