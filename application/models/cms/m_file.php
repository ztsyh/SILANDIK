<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_file extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function get_file_list($num=false,$filters=false,$perpage='',$offset='')
    {
        $this->db->from('cms_file_upload');
        if(is_array($filters))
        {
            // next
            $this->db->like('content','');
        }
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('id','desc');
        return $this->db->get();
    }
    function list_file_upload($list)
    {
        $this->db->from('cms_file_upload');
        $this->db->where_in('id',$list);
        $res = $this->db->get();
        $str = '';
        foreach($res->result() as $row)
        {
            $str .= '<span id="'.$row->id.'">&raquo; '.$row->filename.' ('.$row->type.')</span><br />';
        }
        return $str;
    }
    function save_file($data)
    {
        $this->db->where('id',$data['ufile']);
        $this->db->update('cms_file_upload',array(
            'title'=>$data['title'],
            'desc'=>$data['desc']
        ));
    }
    function delete_file($id)
    {
        $this->db->where('id',$id);
        $file = $this->db->get('cms_file_upload');
        $row = fetch_single_row($file);
        // delete file
        unlink($row->filepath.$row->filename);
        // delete row in table
        $this->db->where('id',$id);
        $this->db->delete('cms_file_upload');
        return $row->filename;
    }
}