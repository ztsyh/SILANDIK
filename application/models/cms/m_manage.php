<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_manage extends CI_Model
{

    // function ambil_level($user_id)
    // {
    //     $this->db->select('*');
    //     $this->db->from('cms_user_define_level');
    //     $this->db->where('nip', $user_id);
    //     $level=$this->db->get()->row()->level;
    //     $arr=explode('+',$level);
    //     $hasil_aray=remove_empty_values($arr);
    //     $ids = join(',',$hasil_aray);  
    //     $this->db->select('*');
    //     $this->db->from('cms_userlevel a');
    //     $this->db->where("(`a`.`id_level` in (".$ids."))");
    //     return $this->db->get()->result();
    // }

    // public function ambil_level($value='')
    // {
    //     $this->db->where('nip', $value);
    //     $hasil=$this->db->get('master_user');
    //     if($hasil->num_rows()>0){
    //         return $hasil->row()->level;
    //     }else{
    //         return from_session('level');    
    //     }
    // }
    public function get_level()
    {
        return $this->db->get('master_level')->result();
    }
    public function get_level_row($id='')
    {
        $this->db->where('id_user', $id);
        $hasil=$this->db->get('data_level');
        if($hasil->num_rows()>0){
            return $hasil->row()->id_level;
        }else{
            return '5';    
        }
        
    }
    function ubah_level($id)
    {
        $newdata = array(
                'level'     => $id
            );
        $this->session->set_userdata($newdata);
    }
    /* USER MANAGEMENT */
    function get_user($num=false,$keyword='',$perpage='',$offset='')
    {
        $this->db->select('a.*,b.nama as level_nama,c.*');
        $this->db->from('cms_user_define_level a');
        $this->db->join('cms_userlevel b','a.level=b.id_level','left');
        $this->db->join('data_pegawai c','c.nip=a.nip','left');
        
        if($keyword != '')
        {
            $this->db->like('c.nama',$keyword);
            $this->db->or_like('c.nip',$keyword);
        }
        if($num)
        {
            $r = $this->db->get();
            return $r->num_rows();
        }
        $this->db->limit($perpage,$offset);
        $this->db->order_by('username');
        return $this->db->get();
    }
    function get_username_from_username($username,$num=false)
    {
        $this->db->select('*');
        $this->db->where('username', $username);
        $this->db->from('cms_user_define_level');
        if($num)
        {
            return $this->db->get()->num_rows;
        }else{
            return $this->db->get();
        }

    }
    // function save_user($data,$data_auth,$new=false)
    // {
    //     if(array_key_exists('pass',$data))
    //     {
    //         $query = $this->db_auth->query('SELECT md5("'.$data_auth['pass'].'") as pwd');
    //         $rows = $query->row();
    //         $data_auth['pass'] = $rows->pwd;
    //     }
    //     if($new)
    //     {
    //         $this->db->insert('cms_user_define_level',$data);
    //         if ($queryuser->num_rows()<1) {
    //             $this->db_auth->where('id_lain',$str);
    //             $queryuser = $this->db_auth->get('v0_tw_user');
    //             $data_auth['id_lain']=$data['nip'];
    //             $data_auth['nama']=$this->get_nama_pegawai($data['nip']);
    //             $data_auth['mode']=2;
    //             $data_auth['tgl_daftar']=date('Y-m-d H:i:s');
    //             $this->db_auth->insert('v0_tw_user', $data_auth);
    //         }
    //     }
    //     else
    //     {
    //         $this->db->where('nip',$data['nip']);
    //         if(from_session('level') > 1)
    //         {
    //             $this->db->where('creator',from_session('user_id')); // only if he created it
    //         }
    //         $data['level'] = '+'.implode('+',$data['level']).'+';
    //         $this->db->update('cms_user_define_level',$data);
    //         $this->db_auth->where('id_lain', $data['nip']);
    //         $this->db_auth->update('v0_tw_user',$data_auth);
    //     }
    // }
    function get_nama_pegawai($nip)
    {
        $this->db->select('nama');
        $this->db->from('data_pegawai');
        $this->db->where('nip', $nip);
        return $this->db->get()->row()->nama;
    }
    function delete_user($id)
    {
        $this->db->where('nip', $id);
        $this->db->delete('cms_user_define_level');
    }
    // function reset_password_user($id)
    // {
    //     $tanggal_lahir = $this->db->query('select * from cms_user_define_level where nip="'.$id.'"')->row()->tanggal_lahir;
    //     $string= substr($tanggal_lahir, -2).substr($tanggal_lahir, 5,2).substr($tanggal_lahir, 0,4);

    //     $query = $this->db->query('SELECT md5("'.$string.'") as pwd');
    //     $rows = $query->row();
    //     $data['pass'] = $rows->pwd;
    //     $this->db_auth->where('id_lain',$id);
    //     $this->db_auth->update('v0_tw_user',$data);
    //     // return $random_string;
    // }
    function build_select_level($root=false,$form_name,$edit='',$tamb='',$only_unit=false)
    {
        $table = 'unit';
        if($root==false)
        {
            $this->db->from($table);
            //$this->db->where('ta',from_session('ta'));
            $this->db->where('level',1);
            $res = $this->db->get();
            if($res->num_rows()==0) die;
            foreach($res->result() as $row)
            {
                $arr[] = $row->id;
            }
        }
        else
        {
            $arr[] = $root;
        }
        $str = '<select name="'.$form_name.'" style="width:400px" '.$tamb.'>';
        if($only_unit)
        {
            $str_only_unit = 'AND id='.$edit;
        }
        else
        {
            $str_only_unit = '';
        }
        foreach($arr as $root)
        {
            // retrieve the left and right value of the $root node
            $result = $this->db->query('SELECT lft,rgt FROM '.$table.' '.
                                  'WHERE id="'.$root.'";');
            $row = $result->row();

            // start with an empty $right stack
            $right = array();

            // now, retrieve all descendants of the $root node
            $result = $this->db->query('SELECT id,nama,lft, rgt FROM '.$table.' '.
                                  'WHERE lft BETWEEN '.$row->lft.' AND '.
                                  $row->rgt.' '.$str_only_unit.' ORDER BY lft ASC;');

            // display each row
            foreach ($result->result() as $row)
            {
                // only check stack if there is one
                if (count($right)>0)
                {
                    // check if we should remove a node from the stack
                    while ($right[count($right)-1]<$row->rgt)
                    {
                        array_pop($right);
                    }
                }
                // display indented node title
                $str_edit = '';
                if($row->id==$edit)
                {
                    $str_edit = 'selected="selected"';
                }
                $str .= '<option '.$str_edit.' value="'.$row->id.'">'.str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;',count($right)).$row->nama.'</option>';

                // add this node to the stack
                $right[] = $row->rgt;
            }
        }
        $str .= '</select>';
        return $str;
    }
    function get_level_add()
    {
        $this->db->select('id_level,nama');
        $this->db->from('cms_userlevel');
        if(from_session('level') > 1)
            $this->db->where('id_level>',from_session('level'),false);
        $res = $this->db->get();
        return $res;
    }
    /* LEVEL MANAGEMENT */
    function save_user_level($data,$new=true)
    {
        if($new)
        {
            $this->db->insert('cms_userlevel',$data);
        }
        else
        {
            $this->db->where('id_level',$data['id_level']);
            $this->db->update('cms_userlevel',$data);
        }
    }
    function delete_user_level($id)
    {
        $this->db->where('id_level',$id);
        $this->db->where('id_level not in (select distinct(level) from cms_user_define_level)','',false);
        $this->db->delete('cms_userlevel');
    }
}