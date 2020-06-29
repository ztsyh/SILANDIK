<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kategori_no_induk extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('master_kategori_no_induk mkni');
		$this->db->order_by('mkni.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('master_kategori_no_induk',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_kategori_no_induk',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_kategori_no_induk');
	}

}