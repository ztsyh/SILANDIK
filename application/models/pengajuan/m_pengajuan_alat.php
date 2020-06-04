<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_alat extends CI_Model {
	
    //select->read
	public function getData($value='')
	{
		$this->db->from('pengajuan_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
    }
    
    //insert->create
	public function insertData($data='')
	{		
        $this->db->insert('pengajuan_alat',$data);
	}

   //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pengajuan_alat',$data);
	}

   //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_alat');
	}

}