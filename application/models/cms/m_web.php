<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_web extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function get_recent_article($limit=5)
    {
        $this->db->select('a.judul_berita as judul,a.alamat as alamat');
        $this->db->from('cms_berita a');
        $this->db->join('cms_kategori_berita b','a.category=b.id_kategori_berita','left');
        $this->db->limit($limit);
        $this->db->order_by('a.id_berita','desc');
        return $this->db->get();
    }
    function get_single_post($post_slug)
    {
        if($post_slug === '') return false;
        $this->db->select('a.judul_berita, a.isi_berita,b.nama_kategori as catname,b.alamat as catslug');
        $this->db->from('cms_berita a');
        $this->db->join('cms_kategori_berita b','a.category=b.id_kategori_berita','left');
        $this->db->where('a.alamat',$post_slug);
        $res = $this->db->get();
        return fetch_single_row($res,true);
    }
    function get_comments_post($id)
    {
        $this->db->from('cms_article_comments');
        $this->db->where('post',$id);
        return $this->db->get();
    }
    function save_post_comment($data)
    {
        $data['user'] = from_session('user_id');
        $data['comment_time'] = time();
        $this->db->insert('cms_article_comments',$data);
    }
    function get_link_archive()
    {
        $res = $this->db->query("
                select
                date_format(post_date,'%Y-%m') as pdate,count(id) as cnt
                from cms_article
                group by date_format(post_date,'%Y-%m')
                order by date_format(post_date,'%Y-%m') DESC
        ");
        $arr = array();
        foreach($res->result() as $row)
        {
            $arr[$row->pdate] = $row->cnt;
        }
        return $arr;
    }
    function get_archive($tahun,$bulan)
    {
        $this->db->select('a.*,b.nama as catname,b.slug as catslug');
        $this->db->from('cms_article a');
        $this->db->join('cms_article_category b','a.category=b.id','left');
        $this->db->where('DATE_FORMAT(post_date,"%Y-%m")','"'.$tahun.'-'.$bulan.'"',false);
        return $this->db->get();
    }
    function get_link_category()
    {
        $res = $this->db->query("
                select
                b.nama as catname,b.slug as catslug,count(a.id) as cnt
                from cms_article a
                left join cms_article_category b on a.category=b.id
                group by category
        ");
        $arr = array();
        foreach($res->result() as $row)
        {
            $arr[$row->catslug] = array($row->catname,$row->cnt);
        }
        return $arr;
    }
    function get_category_archive($catslug)
    {
        $cat = $this->db->get_where('cms_article_category',array('slug'=>$catslug));
        $catid = fetch_single_row($cat);
        $this->db->select('a.*,b.nama as catname,b.slug as catslug');
        $this->db->from('cms_article a');
        $this->db->join('cms_article_category b','a.category=b.id','left');
        $this->db->where('category',$catid->id);
        return $this->db->get();
    }
    function get_link_downloads($limit=5,$num=false,$perpage='',$offset='')
    {
        $this->db->from('cms_file_upload');
        if($num)
        {
            return $this->db->count_all_results();
        }
        $this->db->order_by('id','desc');
        if($perpage !== '' && $offset !== '')
        {
            $this->db->limit($perpage,$offset);
        }
        else
        {
            if($limit > 0) $this->db->limit($limit);
        }
        return $this->db->get();
    }
    function get_file_downloads($slug)
    {
        $this->db->select('concat(filepath,filename) as file,filename,id',false);
        $this->db->from('cms_file_upload');
        $this->db->where('slug',$slug);
        return $this->db->get();
    }
    function get_page($slug)
    {
        $this->db->from('cms_page');
        $this->db->where('slug',$slug);
        $res = $this->db->get();
        return fetch_single_row($res,true);
    }
}