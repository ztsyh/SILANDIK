<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_profile extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('apl/m_referen');
    }
    function update_user($data)
    {
        $this->db->where('id',from_session('user_id'));
        $this->db->update('cms_user_define_level',$data);
    }
    function ubah_identitas($data)
    {
        // $data['tanggal_lahir']=$this->fungsi->convert_to_timestamp($data['tanggal_lahir']);
        $id=from_session('nip');
        $this->db->where('nip', $id);
        $this->db->update('data_pegawai', $data);
    }
    function ubah_password($data)
    {
        $pass = $this->db->query('SELECT PASSWORD("'.$data['password_b'].'") as pwd')->row()->pwd;
        $ubah['password']=$pass;
        $id=from_session('user_id');
        $this->db->where('id_user', $id);
        $this->db->update('cms_user_define_level', $ubah);
    }
    function update_password_user($lama,$baru)
    {
        $this->db->from('cms_user_define_level');
        $this->db->where('id_user',from_session('user_id'));
        $this->db->where('passwrd','PASSWORD("'.$lama.'")',false);
        $num = $this->db->count_all_results();
        if($num == 1)
        {
            $this->db->set('passwrd','PASSWORD("'.$baru.'")',false);
            $this->db->where('id_user',from_session('user_id'));
            $this->db->update('cms_user_define_level');
            return true;
        }
        else
        {
            return false;
        }
    }
    function lihat_log_profile($username)
    {
        $this->db->select('*');
        $this->db->from('cms_log');
        $this->db->where('user', $username);
        $this->db->limit(5);
        return $this->db->get();
    }
}