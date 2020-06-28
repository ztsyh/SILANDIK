<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_bahan extends CI_Model {

	public function getData($value='')
	{
        $this->db->select('pb.*,s.nama_satuan');
		$this->db->join('master_satuan s', 'pb.satuan = s.id', 'left');
		
		return $this->db->get('pengajuan_bahan pb');
	}

	public function insertData($data='')
	{
        $this->db->insert('pengajuan_bahan',$data);
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pengajuan_bahan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_bahan');
	}

	public function getMax($table, $field, $kode = null)
    {
        $this->db->select_max($field);
        if ($kode != null) {
            $this->db->like($field, $kode, 'after');
        }
        return $this->db->get($table)->row_array()[$field];
    }

    public function count($table)
    {
        return $this->db->count_all($table);
    }

    public function sum($table, $field)
    {
        $this->db->select_sum($field);
        return $this->db->get($table)->row_array()[$field];
    }

    public function min($table, $field, $min)
    {
        $field = $field . ' <=';
        $this->db->where($field, $min);
        return $this->db->get($table)->result_array();
    }

}