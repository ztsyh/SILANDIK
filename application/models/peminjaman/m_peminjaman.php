<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_cek extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('peminjaman/cek_status_peminjaman ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman/cek_status_peminjaman',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('peminjaman/cek_status_peminjaman',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id)->delete('peminjaman/cek_status_peminjaman');
	}

}

