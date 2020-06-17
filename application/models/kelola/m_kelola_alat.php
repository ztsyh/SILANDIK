<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kelola_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kelola_alat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_alat',$data);
	}
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_alat');
	}
	public function join()
	{
		$this->db->select('kelola_alat.*,master_nama_alat.nama_alat, master_satuan.nama_satuan, dana.sumber_pendanaan, status.status, penyimpanan_alat.nama_penyimpanan');
		$this->db->from('kelola_alat');
		$this->db->join('master_nama_alat', 'master_nama_alat.id = kelola_alat.nama_alat');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_alat.satuan');
		$this->db->join('dana', 'dana.id_pendanaan = kelola_alat.pendanaan');
		$this->db->join('status', 'status.id = kelola_alat.status');
		$this->db->join('penyimpanan_alat', 'penyimpanan_alat.id = kelola_alat.lokasi');
		return $this->db->get();
}
}
