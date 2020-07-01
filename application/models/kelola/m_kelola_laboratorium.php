<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_transaksi extends CI_Model {


	public function __construct()
	{
		parent::__construct();
		
	}

    public function getByKelolaAlat($id)
    {
        $this->db->select('*');
        $this->db->from('transaksi');
        $this->db->join('pegawai', 'pegawai.idPegawai=transaksi.idPegawai');
        $this->db->join('konsumen', 'konsumen.idKons=transaksi.idKons');
        $this->db->join('mobil', 'mobil.idMobil=transaksi.idMobil');
        $this->db->join('merk', 'merk.idMerk = mobil.idMerk');
        $this->db->where('transaksi.idKons', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

	public function autoId()
	{
		$this->db->select("MAX(idTransaksi)+1 AS idTransaksi");
		$this->db->from("transaksi");
		$query = $this->db->get();

		return $query->row();
	}

	public function getMobilByMerk($merk)
	{
		$this->db->select('*');
        $this->db->from('mobil');
        $this->db->where('idMerk', $merk);
        $query = $this->db->get();
        return $query->result_array();
	}

	public function tambahData()
	{
		$now = mdate('%Y-%m-%d');
		$data = array(
            "idTransaksi" => $this->input->post('id', true),
            "tanggal" => $now,
            "idPegawai" => 1022,
            "idKons" => $this->input->post('idKons', true),
            "idMobil" => $this->input->post('idMobil', true)
        );

        $this->db->insert('transaksi', $data);
	}

	public function getAll()
    {
        $this->db->select('*');
        $this->db->from('transaksi');
        $this->db->join('pegawai', 'pegawai.idPegawai=transaksi.idPegawai');
        $this->db->join('konsumen', 'konsumen.idKons=transaksi.idKons');
        $this->db->join('mobil', 'mobil.idMobil=transaksi.idMobil');
        $this->db->join('merk', 'merk.idMerk = mobil.idMerk');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function ubahData()
    {
    	$now = mdate('%Y-%m-%d');
    	$this->db->set('tanggal', $now)
            ->set('idMobil', $this->input->get('idMobil', true))
            ->where('idTransaksi', $this->input->get('id'))
            ->update('transaksi');
    }

    public function hapusData($id)
    {
    	$this->db->where('idTransaksi', $id);
    	$this->db->delete('transaksi');
    }
}

/* End of file M_transaksi.php */
/* Location: ./application/models/M_transaksi.php */