<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_menu extends CI_Model
{
    function get_menu($level)
    {
        $this->db->from('cms_menu a');
        $this->db->join('cms_menu_grup b','a.grup=b.id_grup_menu','left');
        $this->db->like('allowed_level',"+".$level."+");
        $this->db->where('a.aktif',1);
        $this->db->where("(a.grup != 3)");
        $this->db->order_by('grup desc, urutan asc');
        $res = $this->db->get();
        foreach($res->result() as $row)
        {
            $menu[$row->grup][] = $row;
            $grup_name[$row->grup] = $row->nama_grup;
            $grup_icon[$row->grup] = $row->icon;
        }
        if(!isset($menu)) die('no menu exists!');
        return array($menu,$grup_name,$grup_icon);
    }
    function get_array_menu($id,$active=true)
    {
        $this->db->select('allowed_level');
        $this->db->from('cms_menu');
        $this->db->where('alias',$id);
        if($active)
                $this->db->where('aktif',1);
        $data = $this->db->get();
        if($data->num_rows>0)
        {
            $row=$data->row();
            $lev=$row->allowed_level;
            $arr=explode('+',$lev);
            return remove_empty_values($arr);
        }
        else
    	{
    	   die();
    	}
    }
    /* MENU MANAGEMENT  */
    function get_menu_manage()
    {
        $this->db->select('a.*,b.nama_grup');
        $this->db->from('cms_menu a');
        $this->db->join('cms_menu_grup b','a.grup=b.id_grup_menu','left');
        $this->db->order_by('grup');
        $this->db->order_by('urutan');
        return $this->db->get();
    }
    function get_level()
    {
        $a=$this->db->get('master_level');
        return $a;
    }
    function save_menu_manage($data)
    {
        // -----> arr[menu_id] = level
        $this->db->from('cms_menu');
        $all_menu = $this->db->get();
        foreach($all_menu->result() as $row)
        {
            $allows = explode('+',$row->allowed_level);
            $allows = remove_empty_values($allows);
            if(!array_key_exists('allowed_level',$data))
            {
                if(in_array($data['cur_level'],$allows))
                {
                    $allows = array_val_delete($allows,$data['cur_level']);
                }
            }
            else
            {
                if(array_key_exists($row->id,$data['allowed_level']))
                {
                    if(!in_array($data['cur_level'],$allows))
                    {
                        $allows[] = $data['cur_level'];
                    }
                }
                else
                {
                    if(in_array($data['cur_level'],$allows))
                    {
                        $allows = array_val_delete($allows,$data['cur_level']);
                    }
                }
            }
            $imploded_allows = '+'.implode('+',$allows).'+';
            $this->db->where('id',$row->id);
            $this->db->update('cms_menu',array('allowed_level'=>$imploded_allows));
        }
    }
    function save_menu($data,$new=true)
    {
        $data['allowed_level'] = '+'.implode('+',$data['allowed_level']).'+';
        if($new)
        {
            $this->db->insert('cms_menu',$data);
        }
        else
        {
            $this->db->where('id',$data['id']);
            $this->db->update('cms_menu',$data);
        }
    }
    function delete_menu($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('cms_menu');
    }
    function save_menu_grup($data,$new=true)
    {
        if($new)
        {
	    // find highest id under 100 (coz cms menu is set to be > 100 by default)
	    $this->db->from('cms_menu_grup');
	    $this->db->where('id_grup_menu<',100,false);
	    $this->db->order_by('id_grup_menu','desc');
	    $this->db->limit(1);
	    $res = $this->db->get();
	    $row = fetch_single_row($res,true);
	    if(!$row)
	    {
		$id = 1;
	    }
	    else
	    {
		$id = $row->id_grup_menu + 1;
	    }
	    $data['id_grup_menu'] = $id;
            $this->db->insert('cms_menu_grup',$data);
        }
        else
        {
            $this->db->where('id_grup_menu',$data['id_grup_menu']);
            $this->db->update('cms_menu_grup',$data);
        }
    }
    function delete_menu_grup($id)
    {
        $this->db->where('id_grup_menu',$id);
        $this->db->where('id_grup_menu not in (select distinct(grup) from cms_menu)','',false);
        $this->db->delete('cms_menu_grup');
    }
}