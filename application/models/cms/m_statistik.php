<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_statistik extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}
	public function tambah_statistik($jumlah_tambah,$total_nilai)
	{
		$tanggal=date('Y-m-d');
		$this->db->select('*');
		$this->db->from('statistik');
		$this->db->where('date', $tanggal);
		$hasil=$this->db->get();
		$query=$hasil->row();
		$jumlah=$hasil->num_rows();
		if($jumlah>=1){
			$ubah['jumlah_pemesan']=$query->jumlah_pemesan+$jumlah_tambah;
			$ubah['rata_rata_nilai']=(($query->jumlah_pemesan*$query->rata_rata_nilai)+$total_nilai)/($query->jumlah_pemesan+$jumlah_tambah);
			$this->db->where('date', $tanggal);
			$this->db->update('statistik', $ubah);
		}else{
		$tambah['date']=$tanggal;
		$tambah['jumlah_pemesan']=+$jumlah_tambah;
		$tambah['rata_rata_nilai']=$total_nilai;
		$this->db->insert('statistik', $tambah);
		}

	}
	public function get_tahun()
	{
		return $this->db->query("SELECT EXTRACT(YEAR FROM date) AS tahun,EXTRACT(YEAR FROM date) AS val FROM statistik GROUP BY tahun");
	}
	public function get_tahun_bulan()
	{
		return $this->db->query("SELECT EXTRACT(YEAR_MONTH FROM date) AS val,INSERT(EXTRACT(YEAR_MONTH FROM date),5,0, ' Bulan ') AS tahun_bulan FROM statistik GROUP BY tahun_bulan");
	}

	public function get_item_tahun($tahun)
	{
		return $this->db->query("SELECT EXTRACT(MONTH FROM date) as bulan,EXTRACT(YEAR FROM date) AS tahun, (SELECT sum(jumlah_pemesan) from statistik where EXTRACT(MONTH FROM date)=bulan) as jumlah,(SELECT sum(jumlah_pemesan*rata_rata_nilai) from statistik where EXTRACT(MONTH FROM date)=bulan)/(SELECT sum(jumlah_pemesan) from statistik where EXTRACT(MONTH FROM date)=bulan) as rata_rata FROM statistik where EXTRACT(YEAR FROM date)=".$tahun." GROUP BY bulan");
	}
	public function get_item_bulan($bulan,$tahun)
	{
		return $this->db->query("SELECT EXTRACT(DAY FROM date) as hari,EXTRACT(MONTH FROM date) AS bulan, (SELECT sum(jumlah_pemesan) from statistik where EXTRACT(DAY FROM date)=hari) as jumlah,(SELECT sum(jumlah_pemesan*rata_rata_nilai) from statistik where EXTRACT(DAY FROM date)=hari)/(SELECT sum(jumlah_pemesan) from statistik where EXTRACT(DAY FROM date)=hari) as rata_rata FROM statistik where EXTRACT(MONTH FROM date)=".$bulan." and EXTRACT(YEAR FROM date)=".$tahun."  GROUP BY hari");
	}
	public function convert_to_array($item,$clas,$bln=false)
	{
		$array=array();
		foreach ($item->result() as $row) {
			if($bln){
				$array[]='"'.$this->fungsi->bulan2($row->$clas).'"';
			}else{
				$array[]=$row->$clas;
			}
		}
		return $array;
	}

}

/* End of file m_statistik.php */
/* Location: ./application/models/cms/m_statistik.php */