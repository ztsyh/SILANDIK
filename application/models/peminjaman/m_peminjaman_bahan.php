<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Peminjaman_bahan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('peminjaman_bahan pe');
		$this->db->order_by('pe.id_peminjaman', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman_bahan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id_peminjaman',$data['id_peminjaman']);
            $this->db->update('peminjaman_bahan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id_peminjaman', $id);
        $this->db->delete('peminjaman_bahan');
	}

}

/* End of file m_peminjaman.php */
/* Location: ./application/models/master/m_peminjaman.php */
