<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_mata_kuliah extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('master_mata_kuliah mk');
		$this->db->order_by('mk.kode', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('master_mata_kuliah',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('kode',$data['kode']);
            $this->db->update('master_mata_kuliah',$data);
	}

	public function deleteData($kode='')
	{
		$this->db->where('kode', $kode);
        $this->db->delete('master_mata_kuliah');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */