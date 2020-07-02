<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_seri extends CI_Model {
	
	public function getData($value='')
	{
		$this->db->from('kelola_seri ks');
		$this->db->order_by('ks.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
        $this->db->insert('kelola_seri',$data);  
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_seri',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_seri');
	}

}