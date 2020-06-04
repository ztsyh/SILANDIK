<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_discuss extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function get_thread_list($num=false,$keyword='',$perpage='',$offset='')
    {
        $this->db->from('cms_discuss');
        if($keyword != '')
        {
            $this->db->like('content',$keyword);
        }
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('last_post_time','desc');
        return $this->db->get();
    }
    function get_thread_info($id)
    {
        $this->db->from('cms_discuss');
        $this->db->where('id',$id);
        $res = $this->db->get();
        return fetch_single_row($res);
    }
    function get_thread($id,$num=false,$perpage='',$offset='')
    {
        $this->db->from('cms_discuss_content');
        $this->db->where('forum',$id);
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('post_time','asc');
        $ret = $this->db->get();
        return $ret;
    }
    function reply_thread($data)
    {
        $data['user'] = from_session('user_id');
        $data['post_time'] = time();
        $this->db->insert('cms_discuss_content',$data);
        $id = $this->db->insert_id();
        // update cms_discuss
        $this->db->set('replies', 'replies+1', FALSE);
        $this->db->set('last_post_time', time());
        $this->db->set('last_post_user', $data['user']);
        $this->db->where('id', $data['forum']);
        $this->db->update('cms_discuss');
        return $id;
    }
    function update_hits($id)
    {
        $this->db->set('views','views+1',false);
        $this->db->where('id',$id);
        $this->db->update('cms_discuss');
    }
    function save_new_thread($dt)
    {
        // save cms_discuss
        $user_id = from_session('user_id');
        $time = time();
        $data['ts'] = $user_id;
        $data['create_time'] = $time;
        $data['views'] = 0;
        $data['replies'] = 0;
        $data['last_post_user'] = $user_id;
        $data['last_post_time'] = $time;
        $data['title'] = $dt['title'];
        $this->db->insert('cms_discuss',$data);
        // insert 1st post
        $idforum = $this->db->insert_id();
        $data = array();
        $data['user'] = $user_id;
        $data['post_time'] = $time;
        $data['forum'] = $idforum;
        $data['post_content'] = $dt['post_content'];
        $this->db->insert('cms_discuss_content',$data);
        return $idforum;
    }
    function get_affected_people($idforum)
    {
        $this->db->select('user');
        $this->db->from('cms_discuss_content');
        $this->db->where('forum',$idforum);
        $this->db->group_by('user');
        $res = $this->db->get();
        return $res;
    }
}