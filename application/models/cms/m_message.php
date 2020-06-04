<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_message extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function get_inbox($num=false,$keyword='',$perpage='',$offset='')
    {
        $this->db->select('a.*,b.nama as sender',false);
        $this->db->from('cms_message a');
        $this->db->join('cms_user b','a.from=b.id','left');
        if($keyword != '')
        {
            $this->db->like('content',$keyword);
        }
        $this->db->where('to',from_session('user_id'));
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('sdate','desc');
        return $this->db->get();
    }
    function get_sent($num=false,$keyword='',$perpage='',$offset='')
    {
        $this->db->select('a.*,b.nama as sender',false);
        $this->db->from('cms_message a');
        $this->db->join('cms_user b','a.from=b.id','left');
        if($keyword != '')
        {
            $this->db->like('content',$keyword);
        }
        $this->db->where('to',0);
        $this->db->where('from',from_session('user_id'));
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('sdate','desc');
        return $this->db->get();
    }
    function list_attachment($list)
    {
        $this->db->from('cms_file_message');
        $this->db->where_in('id',$list);
        $res = $this->db->get();
        $str = '';
        foreach($res->result() as $row)
        {
            $str .= '<span id="'.$row->id.'">&raquo; '.$row->filename.' ('.$row->type.')</span><br />';
        }
        return $str;
    }
    function get_array_for($like)
    {
        $this->db->select('id,username,nama');
        $this->db->from('cms_user');
        $this->db->where('(nama like "%'.$like.'%" OR username like  "%'.$like.'%")','',false);
        $this->db->order_by('nama');
        $this->db->order_by('username');
        $data = $this->db->get();
        $arr = array();
        foreach($data->result() as $row)
        {
            $arr['query'] = $like;
            $arr['suggestions'][] = $row->nama.' ('.$row->username.')';
            $arr['data'][] = $row->id;
        }
        return $this->fungsi->jencode($arr);
    }
    function send($data)
    {
        if(array_key_exists('for',$data))
        {
            $fors = $data['for'];
            $data['for'] = implode('#',$fors);
            $fors = remove_empty_values($fors);
        }
        else
        {
            if($data['grup'] != '')
            {
                if($data['grup'] == 'all')
                {
                    $res = $this->db->get('cms_user');
                }
                elseif(is_numeric($data['grup']))
                {
                    $res = $this->db->get_where('cms_user',array('level'=>$data['grup']));
                }
                if(isset($res))
                {
                    foreach($res->result() as $row)
                    {
                        $fors[] = $row->id;
                    }
                }
            }
        }
        if(count($fors) == 0) return false;
        $data = array_key_delete($data,'grup');
        $data['from'] = from_session('user_id');
        $data['sdate'] = time();
        $data['read'] = 0;
        foreach($fors as $to)
        {
            $data['to'] = $to; 
            $this->db->insert('cms_message',$data);
        }
        // save as sent message
        $data['to'] = 0;
        $data['read'] = 1;
        $this->db->insert('cms_message',$data);
        return true;
    }
    function get_file_attachment($id,$slug)
    {
        $this->db->from('cms_file_message');
        $this->db->where('id',$id);
        $this->db->where('slug',$slug);
        $r = $this->db->get();
        if($r->num_rows() > 0)
        {
            $rw = $r->row();
            return array($rw->filepath.$rw->filename,$rw->filename);
        }
        else
        {
            return false;
        }
    }
    function delete_message($ids)
    {
        $uid = from_session('user_id');        
        $this->db->where_in('id',$ids);
        $this->db->where('(`to`='.$uid.' or `from`='.$uid.')','',false);
        $this->db->delete('cms_message');
    }
    function get_attachment($ids)
    {
        $this->db->from('cms_file_message');
        $this->db->where_in('id',$ids);
        $res = $this->db->get();
        return $res;
    }
    function get_message($id)
    {
        $uid = from_session('user_id');
        $this->db->where('id',$id);
        $this->db->where('(`to`='.$uid.' or `from`='.$uid.')','',false);
        return $this->db->get('cms_message');   
    }
}