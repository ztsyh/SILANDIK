<?php
class MMaster extends CI_model {
	function getDataAll($table, $limit = NULL, $offset = NULL) {
	$this->db->order_by('id', 'desc');		
		$sql = $this->db->get($table, $limit, $offset);
		if ($sql->num_rows() > 0) {
			return $sql->result();
		} else {
			return 0;
		}
	}

	public function getNegara($value='')
	{
		$this->db->select('id,kode_negara, nama_negara');
		$this->db->from('master_negara');
		return $this->db->get()->result();
	}

	function getCountDataAll($table, $limit = NULL, $offset = NULL) {
		$this->db->select('count(id) count');
		$sql = $this->db->get($table, $limit, $offset);
		if ($sql->num_rows() > 0) {
			return $sql->row()->count;
		} else {
			return 0;
		}
	}

	function getDataCustom($table, $select = "*", $where = "", $limit = NULL, $offset = NULL) {
		if (is_array($where)) {
			// get keys of array
			$conds = array();
			foreach (array_keys($where) as $idx) {
				array_push($conds, $idx);
			}
			// inject where condition
			$i = 0;
			foreach ($where as $cond) {
				$this->db->where($conds[$i], $cond);
				$i++;
			}
		} else {
			// nothing to do
		}
		$this->db->select($select);
		$this->db->order_by('id', 'desc');		
		$sql = $this->db->get($table, $limit, $offset);
		if ($sql->num_rows() > 0) {
			return $sql->result();
		} else {
			return 0;
		}
	}

	function getDataCustomRow($table, $select = "*", $where = "", $limit = NULL, $offset = NULL) {
		if (is_array($where)) {
			// get keys of array
			$conds = array();
			foreach (array_keys($where) as $idx) {
				array_push($conds, $idx);
			}
			// inject where condition
			$i = 0;
			foreach ($where as $cond) {
				$this->db->where($conds[$i], $cond);
				$i++;
			}
		} else {
			// nothing to do
		}
		$this->db->select($select);
		$sql = $this->db->get($table, $limit, $offset);
		if ($sql->num_rows() > 0) {
			return $sql->row();
		} else {
			return 0;
		}
	}

	function getCountDataCustom($table, $where = "") {
		if (is_array($where)) {
			// get keys of array
			$conds = array();
			foreach (array_keys($where) as $idx) {
				array_push($conds, $idx);
			}
			// inject where condition
			$i = 0;
			foreach ($where as $cond) {
				$this->db->where($conds[$i], $cond);
				$i++;
			}
		} else {
			// nothing to do
		}
		$this->db->select("count(id) count");
		$this->db->get($table);
		if ($sql->num_rows() > 0) {
			return $sql->row()->count;
		} else {
			return 0;
		}
	}

	function setHistory($aksi = '', $keterangan = '', $idjenisbarang = '', $nobarcode = '')
	{
		$this->load->model('master');
		$detailuser = $this->master->getCurrentUser();
		$this->db->where('ID', $detailuser->ID);
		$user = $this->db->get('user_login')->row();
		$data = array(
			'id_toko' => $user->KANTOR,
			'id_user' => $user->ID,
			'id_jenis_barang' => $idjenisbarang,
			'no_barcode' => $nobarcode,
			'aksi' => $aksi,
			'keterangan' => $keterangan,
			'ip' => $_SERVER['REMOTE_ADDR'],
			'mac_address' => $_SERVER['REMOTE_ADDR'],
			'nama_host' => gethostname()			
			 );
		$this->db->insert('t_history', $data);
	}
}
