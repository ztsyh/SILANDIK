<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_periode_pengajuan extends CI_Model {

	public function getData($value='')
	{
        $this->db->select('pp.*,sp.sumber_pendanaan, spj.status_pengajuan');
		$this->db->join('master_sumber_pendanaan sp', 'pp.sumber_pendanaan = sp.id', 'left');
		$this->db->join('status_pengajuan spj', 'pp.status_pengajuan = spj.id', 'left');
		
		return $this->db->get('periode_pengajuan pp');
	}

	public function insertData($data='')
	{
		
        $this->db->insert('periode_pengajuan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('periode_pengajuan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('periode_pengajuan');
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