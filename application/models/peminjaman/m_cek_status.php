<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_cek_status extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('cek_status ma');
		$this->db->order_by('ma.id','desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('cek_status',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('cek_status',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('cek_status');
	}

}