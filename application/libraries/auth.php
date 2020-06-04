<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Auth {

    var $CI = null;

    function __construct()
	{
        $this->CI =& get_instance();
        // parent::__construct();
        
	}
    
    function checkOnline($id)
    {
        $this->CI->db->where('user_id',$id);
        $this->CI->db->from('cms_online');
        return $this->CI->db->count_all_results();
    }
    function getLastActivity($id)
    {
        $this->CI->db->select('last_activity');
        $this->CI->db->from('cms_online');
        $this->CI->db->where('user_id',$id);
        $data = $this->CI->db->get();
        $row = $data->row();
        return $row->last_activity;
    }
    function getDiff($old,$now)
    {
        if($old == '' OR $now == '')
        {
           return TRUE;
        }
        $old_y = date('Y',$old);
        $old_m = date('n',$old);
        $old_d = date('j',$old);
        $old_g = date('G',$old);
        $old_i = date('i',$old);
        $now_y = date('Y',$now);
        $now_m = date('n',$now);
        $now_d = date('j',$now);
        $now_g = date('G',$now);
        $now_i = date('i',$now);
        if($now_y!=$old_y){return TRUE;}
        if($now_m!=$old_m){return TRUE;}
        if($now_d!=$old_d){return TRUE;}
        if($now_g!=$old_g){return TRUE;}
        $diff_minute = $now_i - $old_i;
        if($diff_minute >= 10){ return TRUE;}
        return FALSE;
    }

    function process_login($login = NULL)
    {
        if(!isset($login))
            return FALSE;
        if(count($login) != 2)
                return FALSE;

        $username = $login['username'];
        $password = $login['password'];

        $this->CI->db->select('cs.*,ml.level as nama_level');
        $this->CI->db->where('cs.username', $username);
        $this->CI->db->where("cs.password=password('$password')");
        $this->CI->db->join('master_level ml', 'ml.id = cs.level', 'left');
        $query = $this->CI->db->get('cms_user cs');

        
        if ($query->num_rows() == 1)
        {
            $newdata = array(
                'id'                => $query->row()->id,
                'username'          => $query->row()->username,
                'nama'              => $query->row()->nama,
                'level'             => $query->row()->level,
                'kode_aplikator'    => $query->row()->kode_aplikator,
                'bagian'            => $query->row()->bagian,
                'gambar'            => $query->row()->gambar,
                'nama_level'        => $query->row()->nama_level,
                'logged_in'         => TRUE,
            );
            $this->CI->session->set_userdata($newdata);
            $kegiatan='Login '.$this->CI->config->item('project_name').' by '.$newdata['nama'];
            $this->CI->fungsi->catat($kegiatan);
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }

    
    
    function logout()
    {
        $kegiatan='Logout '.$this->CI->config->item('project').' by '.$this->CI->session->userdata('nama');
        $this->CI->fungsi->catat($kegiatan);
        $user_id=$this->CI->session->userdata('user_id');
        $this->CI->db->delete('cms_online',array('user_id'=>$user_id));
        $this->CI->session->sess_destroy();
        return TRUE;
    }
}
// End of library class
// Location: system/application/libraries/Auth.php
