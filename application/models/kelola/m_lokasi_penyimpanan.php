<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_lokasi_penyimpanan extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('lokasi_penyimpanan lp');
		$this->db->order_by('lp.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('lokasi_penyimpanan',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('lokasi_penyimpanan',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('lokasi_penyimpanan');
	}

}