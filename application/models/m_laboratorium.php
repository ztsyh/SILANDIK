<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_laboratorium extends CI_Model {

	//select->read
	public function getData($value='')
	{
		$this->db->from('kelola_laboratorium ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
	public function getList($value='')
	{
		$this->db->join('master_status ml', 'cu.status = ml.id', 'left');
		$this->db->select('cu.*,ml.l');		
		$this->db->where('cu.status !=', 1);
		return $this->db->get('kelola_laboratorium cu');
	}


    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_laboratorium',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_laboratorium',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_laboratorium');
	}

}

