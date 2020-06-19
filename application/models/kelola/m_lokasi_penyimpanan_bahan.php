<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_lokasi_penyimpanan_bahan extends CI_Model {
	
	//select->read
	public function getData($value='')
	{
		$this->db->from('lokasi_penyimpanan_bahan ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{	
        $this->db->insert('lokasi_penyimpanan_bahan',$data);  
	}
	
	//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('lokasi_penyimpanan_bahan',$data);
	}

	//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('lokasi_penyimpanan_bahan');
	}

}

/* End of file m_satuan.php */
/* Location: ./application/models/master/m_satuan.php */