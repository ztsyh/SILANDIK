<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Fungsi
{
    function __construct()
    {
        $this->CI =& get_instance();
        //$this->update_last_activity();
    }
    function convert_to_timestamp($tanggal)
    {
        $tgl = substr($tanggal,0,2);
        $bln = substr($tanggal,3,2);
        $thn = substr($tanggal,6,9);
        return $thn.'-'.$bln.'-'.$tgl;
    }
    function date_to_tanggal($tanggal)
    {
        $tgl = substr($tanggal,-2);
        $bln = substr($tanggal,-5,2);
        $thn = substr($tanggal,0,4);
        return $tgl.' '.$this->bulan($bln).' '.$thn;
    }
    function ubah_tgl_bln_thn($tanggal)
    {
        $originalDate = $tanggal;
        $bln=substr($originalDate, 3,2);
        $tgl=substr($originalDate, 0,2);
        $thn=substr($originalDate, 6,4);
        $tgl_bln_thn=$tgl.'-'.$bln.'-'.$thn;
        $newDate = strtotime($tgl_bln_thn);
        return $newDate;
    }
    function ubah_tgl_bln_thn_jam($tanggal)
    {
        $originalDate = $tanggal;
        $bln=substr($originalDate, 3,2);
        $tgl=substr($originalDate, 0,2);
        $thn=substr($originalDate, 6,4);
        $jam=substr($originalDate, 11,5);
        $tgl_bln_thn=$tgl.'-'.$bln.'-'.$thn.' '.$jam;
        $newDate = strtotime($tgl_bln_thn);
        return $newDate;
    }
    function bulan($input)
    {
        if($input=='1'||$input=='01'){$output='Januari';}
        if($input=='2'||$input=='02'){$output='Februari';}
        if($input=='3'||$input=='03'){$output='Maret';}
        if($input=='4'||$input=='04'){$output='April';}
        if($input=='5'||$input=='05'){$output='Mei';}
        if($input=='6'||$input=='06'){$output='Juni';}
        if($input=='7'||$input=='07'){$output='Juli';}
        if($input=='8'||$input=='08'){$output='Agustus';}
        if($input=='9'||$input=='09'){$output='September';}
        if($input=='10'){$output='Oktober';}
        if($input=='11'){$output='November';}
        if($input=='12'){$output='Desember';}
        return $output;
    }
    function bulan2($input)
    {
        if($input=='1'||$input=='01'){$output='Jan';}
        if($input=='2'||$input=='02'){$output='Feb';}
        if($input=='3'||$input=='03'){$output='Mar';}
        if($input=='4'||$input=='04'){$output='Apr';}
        if($input=='5'||$input=='05'){$output='Mei';}
        if($input=='6'||$input=='06'){$output='Jun';}
        if($input=='7'||$input=='07'){$output='Jul';}
        if($input=='8'||$input=='08'){$output='Ags';}
        if($input=='9'||$input=='09'){$output='Sep';}
        if($input=='10'){$output='Okt';}
        if($input=='11'){$output='Nov';}
        if($input=='12'){$output='Des';}
        return $output;
    }
    function bulaneng($input)
    {
        if($input=='1'||$input=='01'){$output='January';}
        if($input=='2'||$input=='02'){$output='February';}
        if($input=='3'||$input=='03'){$output='March';}
        if($input=='4'||$input=='04'){$output='April';}
        if($input=='5'||$input=='05'){$output='May';}
        if($input=='6'||$input=='06'){$output='June';}
        if($input=='7'||$input=='07'){$output='July';}
        if($input=='8'||$input=='08'){$output='August';}
        if($input=='9'||$input=='09'){$output='September';}
        if($input=='10'){$output='October';}
        if($input=='11'){$output='November';}
        if($input=='12'){$output='December';}
        return $output;
    }
    function hari($input)
    {
        if($input=='Sun'){$output='Minggu';}
        if($input=='Mon'){$output='Senin';}
        if($input=='Tue'){$output='Selasa';}
        if($input=='Wed'){$output='Rabu';}
        if($input=='Thu'){$output='Kamis';}
        if($input=='Fri'){$output='Jumat';}
        if($input=='Sat'){$output='Sabtu';}
        return $output;
    }
    function hari2($input)
    {
        if($input=='1'){$output='Minggu';}
        if($input=='2'){$output='Senin';}
        if($input=='3'){$output='Selasa';}
        if($input=='4'){$output='Rabu';}
        if($input=='5'){$output='Kamis';}
        if($input=='6'){$output='Jumat';}
        if($input=='7'){$output='Sabtu';}
        return $output;
    }
    function hari3($input)
    {
        if($input=='1'){$output='Sun';}
        if($input=='2'){$output='Mon';}
        if($input=='3'){$output='Tue';}
        if($input=='4'){$output='Wed';}
        if($input=='5'){$output='Thu';}
        if($input=='6'){$output='Fri';}
        if($input=='7'){$output='Sat';}
        return $output;
    }
    function datepicker($name,$d='',$m='',$y='',$start='',$end='',$monthonly=false)
    {
        if($d == '') $d = date('d');
        if($m == '') $m = date('m');
        if($y == '') $y = date('y');
        if($start == '') $start = 2000;
        if($end == '') $end = date('Y');
        if(!$monthonly)
        {
            // date
            $date = '<select name="'.$name.'[]" class="select-box '.$name.'_0">';
            for($i=1;$i<=31;$i++)
            {
                $selected = "";
                if($i == $d) $selected = "selected='selected'";
                $date .= '<option '.$selected.' value="'.$this->complete($i,2).'">'.$i.'</option>';
            }
            $date .= '</select>&nbsp;&nbsp;';
            $date .= '<select name="'.$name.'[]" class="select-box '.$name.'_1">';
        }
        else
        {
            $date = '<select name="'.$name.'[]" class="select-box '.$name.'_1">';
        }
        for($i=1;$i<=12;$i++)
        {
            $selected = "";
            if($i == $m) $selected = "selected='selected'";
            $date .= '<option '.$selected.' value="'.$this->complete($i,2).'">'.$this->bulan($i).'</option>';
        }
        $date .= '</select>&nbsp;&nbsp;';
        $date .= '<select name="'.$name.'[]" class="select-box '.$name.'_2">';
        for($i=$end;$i>=$start;$i--)
        {
            $selected = "";
            if($i == $y) $selected = "selected='selected'";
            $date .= '<option '.$selected.' value="'.$i.'">'.$i.'</option>';
        }
        $date .= '</select>';
        return $date;
    }
    function select_year($name,$edit='',$min='11',$max='')
    {
        if($max == '') $max = date('y');
        for($i=$min;$i<=$max;$i++)
        {
            $data[$i] = '20'.$i;
        }
        return form_dropdown($name,$data,$edit,'class="select-box"');
    }
    function tanggal($in,$time='',$show_time=true)
    {
        $tgl = substr($in,8,2);
        $bln = substr($in,5,2);
        $thn = substr($in,0,4);
        if(checkdate($bln,$tgl,$thn) == false) return "-";
        if($time=='')
        {
            $hour = 0;
            $min = 0;
            $sec = 0;
        }
        else
        {
            $hour = substr($time,0,2);
            $min = substr($time,3,2);
            $sec = substr($time,6,2);
        }
        $timestmp = mktime($hour,$min,$sec,$bln,$tgl,$thn);
        $output = $this->hari(date('D',$timestmp)).', '.$tgl.' '.$this->bulan($bln).' '.$thn;
        if($show_time) $output .= ' pukul '.$hour.'.'.$min;
        return $output;
    }
    function tanggal2($timestamp)
    {
        $tgl = date('d',$timestamp);
        $bln = date('n',$timestamp);
        $thn = date('Y',$timestamp);
        $hari = date('D',$timestamp);
        $output = $this->hari($hari).", ".$tgl." ".$this->bulan($bln)." ".$thn." pukul ".date('H:i',$timestamp);
        return $output;
    }
    function tanggal3($in)
    {
        $tgl = substr($in,8,2);
        $bln = substr($in,5,2);
        $thn = substr($in,0,4);
        if(checkdate($bln,$tgl,$thn) == false) return "-";
        $output = $tgl.' '.$this->bulan($bln).' '.$thn;
        return $output;
    }
    function tanggal4($timestamp)
    {
        $tgl = date('d',$timestamp);
        $bln = date('n',$timestamp);
        $thn = date('Y',$timestamp);
        if($thn == date('Y'))
        {
            $output = $tgl." ".$this->bulan2($bln);
        }
        else
        {
            $output = $tgl." ".$this->bulan2($bln)." ".$thn;
        }
        return $output;
    }
    function tanggal5($waktu)
    {
        $tgl=substr($waktu, 0,2);
        $bln=substr($waktu, 3,2);
        $thn=substr($waktu, 6,4);
        $output = $tgl." ".$this->bulan($bln)." ".$thn;
        return $output;
    }
    function tanggal6($waktu,$eng=false)
    {
        $thn=substr($waktu, 0,4);
        $bln=substr($waktu, 5,2);
        $tgl=substr($waktu, 8,2);
        if($eng){
        $output = $tgl." ".$this->bulaneng($bln)." ".$thn;
        }else{
        $output = $tgl." ".$this->bulan($bln)." ".$thn;
        }
        return $output;
    }
    function complete($in,$max)
    {
        $len = $max;
        $len_in = strlen($in);
        $zero_len = $len - $len_in;
        $zero = "";
        for($i=1;$i<=$zero_len;$i++)
        {
            $zero .= '0';
        }
        return $zero.$in;
    }
    function fixtime($timestamp,$biasaeng=false,$biasaindo=false,$waktu=false)
    {
        if($biasaeng){
             $tahun=date("Y",$timestamp);
            $bulan=date("n",$timestamp);
            $tanggal=date("d",$timestamp);

            return $tanggal.' '.$this->bulaneng($bulan).' '.$tahun;
        }
        elseif ($biasaindo){
           $tahun=date("Y",$timestamp);
            $bulan=date("n",$timestamp);
            $tanggal=date("d",$timestamp);
            if($waktu){
                $jam=date("h:i",$timestamp);
                return $tanggal.' '.$this->bulan($bulan).' '.$tahun.' '.$jam;
            }else{
                return $tanggal.' '.$this->bulan($bulan).' '.$tahun;
            }
        }else{
        if($timestamp == '' or !is_numeric($timestamp))
        {
            return '';
        }
        $tgl = date('d',$timestamp);
        $bln = date('n',$timestamp);
        $thn = date('Y',$timestamp);
        $timespan = strtolower(timespan($timestamp));
        $timespan = str_replace(',','',$timespan);
        $exp = explode(' ',$timespan);
        $k = $exp[1];
        $v = $exp[0];
        if($v > 0)
        {
            if ($k == 'tahun' OR date('Y') > date('Y', $timestamp))
            {
                return 'Tanggal '.$tgl.' '.$this->bulan($bln).' '.$thn;
            }
            elseif ($k == 'minggu' OR $k == 'bulan')
            {
                return 'Tanggal '.$tgl.' '.$this->bulan($bln).' pukul '.date('H:i',$timestamp);
            }
            elseif ($k == 'hari' OR $k == 'jam' OR $k == 'menit' OR $k == 'detik')
            {
                if($v >= 2 AND $k == 'hari')
                {
                    return $this->hari(date('D',$timestamp)).' pukul '.date('H:i', $timestamp);
                }
                elseif (date('j') - date('j', $timestamp) == 1)
                {
                    return 'Kemarin pukul '.date('H:i', $timestamp);
                }
                elseif ((date('D') == date('D', $timestamp)) AND (($v >= 3) AND ($k == 'jam')))
                {
                    return 'Hari ini pukul '.date('H:i', $timestamp);
                }
                elseif (($k == 'jam' AND $v < 3) OR $k == 'menit' OR $k == 'detik')
                {
                    if($k == 'detik' AND $v <= 15)
                    {
                        $tahun=date("Y",$timestamp);
            $bulan=date("n",$timestamp);
            $tanggal=date("d",$timestamp);
            return 'Tanggal '.$tanggal.' '.$this->bulan($bulan).' tahun '.$tahun;
                    }
                    return $v.' '.$k.' yang lalu';
                }
                else
                {
                    return $this->hari(date('D',$timestamp)).' pukul '.date('H:i', $timestamp);
                }
            }
        }
        else
        {
            $tahun=date("Y",$timestamp);
            $bulan=date("n",$timestamp);
            $tanggal=date("d",$timestamp);
            return $tanggal.' '.$this->bulan($bulan).' '.$tahun;
        }
    }
    }
    function update_last_activity()
    {
        $user_id = from_session('user_id');
        if($user_id !='')
        {
            $this->CI->db->where('user_id',$user_id);
            $this->CI->db->update('cms_online',array('last_activity'=>time()));
        }
    }
    function warning($input,$goTo='')
    {
        if($goTo=='')
	{
            $goTo = site_url('cms/admin/');
	}
	$output="<script>
                alert(\"$input\");
                location = '".$goTo."';
            </script>";
	return $output;
    }
    function alert($input,$goTo)
    {
    $this->run_js("load_silent('".$goTo."','#content')");
    echo "<script>
                alert(\"$input\");
            </script>";
    }
    function catat($kegiatan,$awal ='',$isData=false)
    {
        if($isData)
        {
            $gab='';
            foreach($kegiatan as $key=>$val):
                if($val==''){ $val='kosong';}
                if(is_array($val)) $val = implode(',',$val);
                $keg='<li><b>'.$key.'</b> dengan value <b>'.$val.'</b></li>';
                $gab=$gab.$keg;
            endforeach;
            $str = $awal.'<br />
                    <ul>'.$gab.'</ul>';
        }
        else
        {
            $str = $kegiatan;
        }
        $ip = $_SERVER['REMOTE_ADDR'];
        $ip_name='';
        $waktu=date('Y-m-d H:i:s');
        $creator=$this->CI->session->userdata('username');
        if($creator == ''){ $creator = 'Tamu';}
        //catat ke log
        $this->CI->db->insert('cms_log',array('ip'=>$ip,
                                              'mac_address'=>$ip_name,
                                              'user'=>$creator,
                                              'kegiatan'=>$str,
                                              'time'=>$waktu));
    }
    function history($status='',$menu ='',$detail='')
    {
        $waktu=date('Y-m-d H:i:s');
        $creator=$this->CI->session->userdata('id');
        //catat ke log
        $object = array(
                'user'   => $creator,
                'status' => $status,
                'menu'   => $menu,
                'detail' => $detail,
                'date'   => $waktu,
            );
        $this->CI->db->insert('data_history',$object);
    }
    function checkIP()
    {
        $ip = $_SERVER['REMOTE_ADDR'];
        $this->CI->db->from('cms_allowed_ip');
        $this->CI->db->where('ip_address',$ip);
        $exist = $this->CI->db->count_all_results();
        if($exist == 0)
        {
            echo $this->warning($this->CI->config->item('project').' tidak memperbolehkan Login di Area Anda',base_url().'assets/pages/outside_area.php');
            die();
        }
    }
    function restrict($logged_out = FALSE,$message = "")
    {
        if($message == '')
        {
            $message = "Anda diharuskan untuk login untuk mengakses halaman Admin";
        }

        if ($logged_out && $this->logged_in())
        {
            echo $this->warning('Anda sudah login...',site_url('cms/admin/'));
            die();
        }
        if ( ! $logged_out && ! $this->logged_in())
        {
            echo $this->warning($message,site_url());
            die();
        }
    }
    function check_previleges($idmenu,$active=true,$return=false)
    {
        $this->CI->load->model('cms/m_menu');
        $status_user = from_session('level');
        $arr = $this->CI->m_menu->get_array_menu($idmenu,$active);
        if(in_array($status_user,$arr)==FALSE)
        {
            if($return)
            {
                return false;
            }
            else
            {
                // return false;
                // echo $this->warning("Maaf, Anda tidak berhak untuk mengakses halaman ini.");
                echo $this->warning("Maaf, Anda tidak berhak untuk mengakses halaman ini.",site_url('login/logout/'));
                die();
            }
        }
        else
        {
            if($return)
            {
                return true;
            }
        }
    }
    function check_previleges_tombol($idmenu,$active=true,$return=false)
    {
        $this->CI->load->model('cms/m_menu');
        $status_user = from_session('level');
        $arr = $this->CI->m_menu->get_array_menu($idmenu,$active);
        if(in_array($status_user,$arr))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    function telo($val)
    {
        return $val;
    }
    function logged_in()
    {
        if ($this->CI->session->userdata('logged_in') == FALSE)
        {
            return FALSE;
        }
        else
        {
            return TRUE;
        }
    }
    function create_paging($url,$total_rows,$per_page,$segment)
    {
        $this->CI->load->library('pagination');

        $config['base_url'] = site_url($url);
        $config['total_rows'] = $total_rows;
        $config['num_links'] = 2;
        $config['uri_segment'] = $segment;
        $config['per_page'] = $per_page;
        $config['first_link'] = '&lsaquo; Pertama';
        $config['last_link'] = 'Terakhir &rsaquo;';
        $config['prev_link'] = '&lsaquo; Sebelumnya';
        $config['next_link'] = 'Selanjutnya &rsaquo;';
        $config['full_tag_open'] = '<div class="dataTables_paginate paging_bs_full" id="datatable1_paginate"><ul class="pagination">';
        $config['full_tag_close'] = '</ul></div>';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a class="not-active"><strong>';
        $config['cur_tag_close'] = '</strong></a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        $this->CI->pagination->initialize($config);

        return $this->CI->pagination->create_links();
    }
    function send_mail($address,$subject,$message)
    {
        $this->CI->load->library('email');
        $config['protocol'] = 'mail';
        $config['charset'] = 'utf-8';
        $config['wordwrap'] = TRUE;
        $this->CI->email->initialize($config);
        $this->CI->load->helper('email');
        foreach($address as $id=>$email)
        {
            if(valid_email($email) == false) continue;
            $this->CI->email->clear();
            $this->CI->email->from('do-not-reply-please@'.$this->CI->config->item('domain'), $this->CI->config->item('project'));
            $this->CI->email->to($email);

            $this->CI->email->subject($subject);
            $this->CI->email->message($message[$id]);

            $ret = $this->CI->email->send();
            if($ret == false)
            {
                $this->catat('ERROR : failed to send email, to : '.$email);
            }
        }
    }
    function get_user_info($ids)
    {
        $arr = array();
        $this->CI->db->select('id_user,nama,username,email');
        $this->CI->db->from('cms_user');
        $this->CI->db->where_in('id_user',$ids);
        $res = $this->CI->db->get();
        foreach($res->result() as $row)
        {
            $arr[$row->id_user] = array('nama'=>$row->nama,'username'=>$row->username,'email'=>$row->email);
        }
        return $arr;
    }
    function message_box($text,$type)
    {
        $this->CI->load->view('utility/messagebox_2',array('text'=>$text,'type'=>$type));
    }
    function parse_modal($header='',$subheader='',$content='',$extra_button='',$message='',$js='')
    {
        $data = array('js'=>$js,'message'=>$message,'header'=>$header,'subheader'=>$subheader,'content'=>$content,'extra_button'=>$extra_button);
        return $this->CI->load->view('utility/modal',$data,true);
    }

    function parse_modal_panjang($header='',$subheader='',$content='',$extra_button='',$message='',$js='')
    {
        $data = array('js'=>$js,'message'=>$message,'header'=>$header,'subheader'=>$subheader,'content'=>$content,'extra_button'=>$extra_button);
        return $this->CI->load->view('utility/modal_panjang',$data,true);
    }
    function parse_formbox($header='',$subheader='',$content='',$extra_button='',$message='',$js='')
    {
        $data = array('js'=>$js,'message'=>$message,'header'=>$header,'subheader'=>$subheader,'content'=>$content,'extra_button'=>$extra_button);
        return $this->CI->load->view('utility/formbox',$data,true);
    }
    function run_js($js)
    {
        $this->CI->load->view('utility/js_exec',array('js'=>$js));
    }
    function jencode($arr)
    {
        if (version_compare(PHP_VERSION,"5.2","<"))
        {
            $data = $this->array_to_json_string($arr);    //encode the data in json format
        }
        else
        {
            $data = json_encode($arr);    //encode the data in json format
        }
        return $data;
    }
    function array_to_json_string($arraydata)
    {
        $output = "";
        $output .= "{";
        foreach($arraydata as $key=>$val){
            if (is_array($val)) {
                $output .= "\"".$key."\" : [{";
                    foreach($val as $subkey=>$subval){
                        $output .= "\"".$subkey."\" : \"".$subval."\",";
                    }
                $output .= "}],";
            } else {
                $output .= "\"".$key."\" : \"".$val."\",";
            }
        }
        $output .= "}";
        return $output;
    }
    function lahir($tanggal){
        list($tahun,$bulan,$hari) = explode("-",$tanggal);
        $format_tahun  = date("Y") - $tahun;
        $format_bulan = date("m") - $bulan;
        $format_hari   = date("d") - $hari;
        if ($format_hari < 0 || $format_bulan < 0)
          $format_tahun--;
        return $format_tahun;
    }
    function selisih_hari($tanggal)
    {   
        list($tahun,$bulan,$hari) = explode("-",$tanggal);
        $end_date=date('Y').'-'.$bulan.'-'.$hari;
        $beginDate=date('Y-m-d');
        $date_parts1=explode("-", $beginDate);
       $date_parts2=explode("-", $end_date);
       
       $start_date=gregoriantojd($date_parts1[1], $date_parts1[2], $date_parts1[0]);
       $end_date=gregoriantojd($date_parts2[1], $date_parts2[2], $date_parts2[0]);
       return $end_date - $start_date;
        

    }
}