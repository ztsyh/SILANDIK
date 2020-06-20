<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_lokasi_penyimpanan_alat extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('lokasi_penyimpanan_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('lokasi_penyimpanan_alat',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('lokasi_penyimpanan_alat',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('lokasi_penyimpanan_alat');
	}

}