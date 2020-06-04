<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_common extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function save_history()
    {
        $uri = $this->uri->uri_string();
        $post = "";
        $save = true;
        if(isset($_POST))
        {
            if(count($_POST) < 10)
            {
                $post = serialize($_POST);
            }
            if(array_key_exists('history',$_POST))
            {
                $save = false;
            }
            if(array_key_exists('cetak',$_POST))
            {
                $save = false;
            }
            if(array_key_exists('do_not_save',$_POST))
            {
                $save = false;
            }
        }
        $data = array('user'=>from_session('user_id'),
                'page'      =>$uri,
                'pagedata'  =>$post
            );
        if($save) $this->db->insert('apl_history',$data);
    }
    function get_history()
    {
        $this->db->query('delete from apl_history where user='.from_session('user_id').' order by id desc limit 1');

        $this->db->from('apl_history');
        $this->db->where('user',from_session('user_id'));
        $this->db->order_by('id','desc');
        $this->db->limit(1);
        $res = $this->db->get();
        $result = fetch_single_row($res,true);
        if($result == false) return array('','');
        return array($result->page,$result->pagedata);
    }
    function get_profile_photo($nip,$size=50)
    {
        $w = $size;
        $h = $w;
        $this->db->select('gambar,nama');
        $this->db->from('data_pegawai');
        $this->db->where('nip',$nip);
        $res = $this->db->get();
        $row = fetch_single_row($res);
        return parse_avatar($row->gambar,$row->nama,$size);
    }
    function get_profile_photo_sikadu($nim,$size=50)
    {
        $w = $size;
        $h = $w;
        $nama=$this->session->userdata('nama');
        $photo='https://akademik.unnes.ac.id/foto/tampil_foto.php?id='.$nim;
        return parse_avatar($photo,$nama,$size);
    }
    function get_user_info($ids)
    {
        if(!is_array($ids)) $ids = array($ids);
        $this->db->select('a.*,b.nama as levelnama,b.deskripsi as leveldesc,c.*');
        $this->db->from('cms_user_define_level a');
        $this->db->join('cms_userlevel b','a.level=b.id_level');
        $this->db->join('data_pegawai c', 'a.nip = c.nip');
        $this->db->where_in('a.nip',$ids);
        $res = $this->db->get();
        if(count($ids)==1)
        {
            $row = fetch_single_row($res);
            return $row;
        }
        else
        {
            foreach($res->result() as $row)
            {
                $arr[] = $row;
            }
            if(!isset($arr)) die;
            return $arr;
        }
    }
    function get_user_meta($user,$meta_name)
    {
        return $this->set_user_meta($user,$meta_name,'',false);
    }
    function set_user_meta($user,$meta_name,$meta_value='',$set=true)
    {
        /*******************************************/
        // Defined user meta
        // -- add if necessary
        $meta_name_valid = array(
            'LAST_LOGIN',
            'UNREAD_NOTIFICATION',
            'DISCUSS_POST_COUNTER',
            'LAST_UPDATE_PASSWORD',
            'POST_SIGNATURE',
            'SELF_DESCRIPTION'
        );
        if(!in_array($meta_name,$meta_name_valid)) die('INVALID META NAME : '.$meta_name);
        /*******************************************/
        $id = $user;
        // check $meta_name exist or not
        $this->db->from('cms_user_meta');
        $this->db->where('user',$id);
        $this->db->where('key',$meta_name);
        $res = $this->db->get();
        $num = $res->num_rows();
        if($num == 1)
        {
            if(!$set)
            {
                $row = $res->row();
                return $row->val;
            }
            // update
            switch($meta_value)
            {
                case '__PLUS_ONE__':
                    $this->db->set('val','val+1',false);
                    break;
                default:
                    $this->db->set('val', $meta_value);
            }
            $this->db->where('key',$meta_name);
            $this->db->where('user',$id);
            $this->db->update('cms_user_meta');
        }
        else
        {
            if(!$set)
            {
                return '';
            }
            // create
            switch($meta_value)
            {
                case '__PLUS_ONE__':
                    $this->db->set('val','1');
                    break;
                default:
                    $this->db->set('val', $meta_value);
            }
            $this->db->set('user', $id);
            $this->db->set('key', $meta_name);
            $this->db->insert('cms_user_meta');
        }
    }
    function notification($for,$from,$content,$url='')
    {
        $data['notif_content'] = $content;
        $data['notif_url'] = $url;
        $data['for'] = $for;
        $data['from'] = $from;
        $data['notif_time'] = time();
        $data['read'] = 0;
        $this->db->insert('cms_notification',$data);
    }
    function get_notification($limit=0)
    {
        $this->db->from('cms_notification');
        $this->db->where('for',from_session('user_id'));
        $this->db->where('read',0);
        $this->db->order_by('id','desc');
        if($limit > 0)
        {
            $this->db->limit($limit);
        }
        return $this->db->get();
    }
    function get_num_new_notification()
    {
        $this->db->from('cms_notification');
        $this->db->where('for',from_session('user_id'));
        $this->db->where('read',0);
        return $this->db->count_all_results();
    }
    function get_recent_message($limit=5)
    {
        $this->db->from('cms_message');
        $this->db->where('to',from_session('user_id'));
        $this->db->order_by('id','desc');
        $this->db->limit($limit);
        return $this->db->get();
    }
    function get_num_new_message()
    {
        $this->db->from('cms_message');
        $this->db->where('to',from_session('user_id'));
        $this->db->where('read',0);
        return $this->db->count_all_results();
    }
    function get_chat($id,$all='')
    {
        $with = $id;
        $me = from_session('user_id');
        /* check if there's new chat
        $this->db->from('cms_chat');
        $this->db->where('((`from`='.$with.' AND `to`='.$me.' ))','',false);
        $this->db->where('read',0);
        $num = $this->db->count_all_results();
        if($num == 0 && $all != 'all') return false;
        */
        $this->db->from('cms_chat');
        $this->db->where('((`to`='.$with.' AND `from`='.$me.') OR (`from`='.$with.' AND `to`='.$me.' ))','',false);
        //$this->db->where('read',0);
        $this->db->order_by('id');
        $this->db->limit(100);
        return $this->db->get();
    }
    function check_all_chat()
    {
        $me = from_session('user_id');
        $froms = explode('#',from_session('chat'));
        $froms = remove_empty_values($froms);
        // check if there's new chat
        $this->db->select('from');
        $this->db->from('cms_chat');
        $this->db->where('to',$me);
        if(count($froms)>0)
            $this->db->where_not_in('from',$froms);
        $this->db->where('read',0);
        $this->db->group_by('from');
        $res = $this->db->get();
        $new = "";
        foreach($res->result() as $row)
        {
            $new .= "#".$row->from;
        }
        return $new;
    }
    function get_user_online()
    {
        $now = time();
        $data = $this->db->get('cms_online');
        $all = $data->num_rows();
        $arr = array();
        foreach($data->result() as $row)
        {
            $user_id = $row->user_id;
            $old = $row->last_activity;
            if(!$this->isNotOnline($old,$now) && $user_id != from_session('user_id') && $user_id != 1)
            {
                $arr[] = $user_id;
            }
        }
        return $arr;
    }
    function isNotOnline($old,$now)
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
        //$old_s = date('s',$old);
        $now_y = date('Y',$now);
        $now_m = date('n',$now);
        $now_d = date('j',$now);
        $now_g = date('G',$now);
        $now_i = date('i',$now);
        //$now_s = date('s',$now);
        //start checking
        if($now_y!=$old_y){return TRUE;}
        if($now_m!=$old_m){return TRUE;}
        if($now_d!=$old_d){return TRUE;}
        if($now_g!=$old_g){return TRUE;}
        // ignore second
        $diff_minute = $now_i - $old_i;
        if($diff_minute >= 10)
        {
            return TRUE;
        }else{
            return FALSE;
        }
    }
}