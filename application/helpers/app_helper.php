<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function from_session($key)
{
    $CI =& get_instance();
    $ss = $CI->session->userdata($key);
    return $ss;
}
function pdf_create($html, $filename, $papersize = 'a4', $orientation = 'portrait') 
{
    require_once(APPPATH."helpers/dompdf/dompdf_config.inc.php");
    $dompdf = new DOMPDF();
    $dompdf->set_paper($papersize, $orientation); 
    $dompdf->load_html($html);
    $dompdf->render();
    $dompdf->stream($filename.'.pdf');      
}
function button($action,$title,$class,$tambahan='',$ajax=true)
{
    if($ajax)
    {
        return '<a '.$tambahan.' class="'.$class.'" href="javascript:void(0)" onclick="'.form_prep($action).'" >'.$title.'</a>';
    }
    else
    {
        return '<a '.$tambahan.' class="'.$class.'" target="_blank" href="'.site_url($action).'" >'.$title.'</a>';
    }
}
function button_confirm($dialog,$uri,$dom,$title,$class,$tambahan='')
{
    return '<a '.$tambahan.' class="'.$class.'" href="javascript:void(0)" onclick="'.form_prep("jconfirm('".$dialog."','".$uri."','".$dom."')").'" >'.$title.'</a>';
}
function title($title)
{
    return "<div class='title'>".$title."<span></span></div>";
}
function mb_error($txt)
{
    return '<p class="message-box error">'.$txt.'</p>';
}
function mb_info($txt)
{
    return '<p class="message-box info">'.$txt.'</p>';
}
function mb_ok($txt)
{
    return '<p class="message-box ok">'.$txt.'</p>';
}
function mb_alert($txt)
{
    return '<p class="message-box alert">'.$txt.'</p>';
}
function ajax_menu($action,$title,$class)
{
    return '<a class="'.$class.'" href="javascript:void(0)" onclick="load_silent(\''.$action.'\',\'#content\')" >'.$title.'</a>';
}
function ajax_menu_adm($action,$title)
{
    return '<a class="" onclick="load_silent(\''.$action.'\',\'#content\')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>'.$title.'</a>';
    //return '<a class="'.$class.'" href="javascript:void(0)" onclick="load_silent(\''.$action.'\',\'#content\')" >'.$title.'</a>';
}
function parse_avatar($avatar,$nama,$size,$class='')
{
    if($avatar == '')
    {
        $pic = 'nophoto.png';
        return img(array('src'=>'assets/img/'.$pic,'alt'=>$nama,'title'=>$nama,'width'=>$size,'height'=>$size,'class'=>$class));
    }
    else
    {
        $pic = $avatar;
        return img(array('src'=>$pic,'alt'=>$nama,'title'=>$nama,'width'=>$size,'height'=>$size,'class'=>$class));
    }
}
function parse_avatar_sikadu($nim,$nama,$size,$class='')
{
        $pic ='https://akademik.unnes.ac.id/foto/tampil_foto.php?id='.$nim;
        return img(array('src'=>$pic,'alt'=>$nama,'title'=>$nama,'width'=>$size,'height'=>$size,'class'=>$class));
}
function remove_empty_values($array, $remove_null_number = true)
{
    $new_array = array();
    $null_exceptions = array();
    foreach ($array as $key => $value)
    {
        $value = trim($value);
        if($remove_null_number)
        {
            $null_exceptions[] = '0';
        }

        if(!in_array($value, $null_exceptions) && $value != "")
        {
            $new_array[] = $value;
        }
    }
    return $new_array;
}
function get_options($dbobj,$withempty=false)
{
    $key = array();
    $arr = array();
    foreach($dbobj->list_fields() as $field)
    {
        $key[] = $field;
    }
    if(count($key) < 2) die('Dropdown can\'t be made with field less than two');
    if($withempty)
    {
        $arr[""] = "- pilih -";
    }
    foreach($dbobj->result() as $row)
    {
        $arr[$row->$key[0]] = $row->$key[1];
    }
    return $arr;
}
function get_options_db_tambahan($dbobj,$withempty=false,$tambahan=false,$array)
{
    $arr = array();
    foreach($dbobj->list_fields() as $field)
    {
        $key[] = $field;
    }
    if(count($key) < 2) die('Dropdown can\'t be made with field less than two');
    if($withempty)
    {
        $arr[""] = "- pilih -";
    }
    foreach($dbobj->result() as $row)
    {
        $arr[$row->$key[0]] = $row->$key[1];
    }
    if($tambahan)
    {
        $arr[array_shift(array_keys($array))] = array_shift(array_values($array));
    }
    return $arr;
}
function get_options2($dbobj,$key,$withempty=false)
{
    $arr = array();
    if(count($key) < 2) die('Dropdown can\'t be made with field less than two');
    if($withempty)
    {
        $arr[""] = "- pilih -";
    }
    foreach($dbobj->result() as $row)
    {
        $arr[$row->$key[0]] = $row->$key[1];
    }
    return $arr;
}
function get_options_array($array,$withempty=false)
{
    $arr = array();

    if($withempty)
    {
        $arr[""] = "- pilih -";
    }
    foreach($array as $row)
    {
        $arr[$row] = $row;
    }
    return $arr;
}

function get_post_data($field=array())
{
    $CI =& get_instance();
    foreach(array_keys($_POST) as $f)
    {
        $data[$f] = $CI->input->post($f);
        if(!is_array($data[$f]))
        {
            $data[$f] = trim($data[$f]);
        }
    }
    if(!isset($data)) return array();
    if(count($field) > 0)
    {
        $data_ret = array();
        foreach($field as $f)
        {
            if(array_key_exists($f,$data))
                $data_ret[$f] = $data[$f];
        }
    }
    else
    {
        $data_ret = $data;
    }
    return $data_ret;
}
function must_in_range($a,$r1,$r2)
{
    if($a > $r2) return $r2;
    if($a < $r1) return $r1;
    return $a;
}
function parse_infotable($offset,$perpage,$total,$dataname="data")
{
    $off = $offset+1;
    if($total == 0) $off = 0;
    return "Menampilkan ".($off)." s.d ".must_in_range($offset+$perpage,0,$total)." dari total ".$total." ".$dataname;
}
function array_key_delete($array,$keys)
{
    $tmp_array = array();
    if(is_string($keys))
    {
        $keys_to_be_deleted = array($keys);
    }
    elseif(is_array($keys))
    {
        $keys_to_be_deleted = $keys;
    }
    else
    {
        return $array;
    }
    foreach($array as $key=>$val)
    {
        if(!in_array($key,$keys_to_be_deleted))
        {
            $tmp_array[$key] = $val;
        }
    }
    return $tmp_array;
}
function array_val_delete($array,$val)
{
    $tmp_array = array();
    if(is_string($val))
    {
        $vals_to_be_deleted = array($val);
    }
    elseif(is_array($val))
    {
        $vals_to_be_deleted = $val;
    }
    else
    {
        return $array;
    }
    foreach($array as $value)
    {
        if(!in_array($value,$vals_to_be_deleted))
        {
            $tmp_array[] = $value;
        }
    }
    return $tmp_array;
}
function fetch_single_row($dbobj,$return=false)
{
    if($dbobj->num_rows() == 0)
    {
        if($return) return false;
        die;
    }
    return $dbobj->row();
}
function div_no_data($txt='Data tidak tersedia')
{
    return "<div class='no-data'>".$txt."</div>";
}
if(!function_exists('hex2bin'))
{
    function hex2bin($data)
    {
        $len = strlen($data);
        $newdata = '';
        for($i=0;$i<$len;$i+=2) {
            $newdata .= pack("C",hexdec(substr($data,$i,2)));
        }
        return $newdata;
    }
}
function parse_icon($type,$txt)
{
    if(stristr($type,'pdf') != false)
    {
        $class = "icon_pdf";
    }
    elseif(stristr($type,'doc') != false || stristr($type,'word') != false)
    {
        $class = "icon_doc";
    }
    elseif(stristr($type,'xls') != false || stristr($type,'excel') != false)
    {
        $class = "icon_xls";
    }
    elseif(stristr($type,'ppt') != false)
    {
        $class = "icon_ppt";
    }
    elseif(stristr($type,'png') != false)
    {
        $class = "icon_png";
    }
    elseif(stristr($type,'jpg') != false || stristr($type,'jpeg') != false)
    {
        $class = "icon_jpg";
    }
    elseif(stristr($type,'gif') != false)
    {
        $class = "icon_gif";
    }
    else
    {
        $class = "icon_other";
    }
    return "<span class='".$class."'>".$txt."</span>";
}
function get_upload_folder($basedir)
{
    $CI =& get_instance();
    $permission = $CI->config->item('chmod_writable');
    $nowmonth = date('m');
    $nowyear = date('Y');
    $baseyear = $basedir.$nowyear.'/';
    $isdir = is_dir($baseyear);
    if($isdir == false)
    {
        mkdir($baseyear,$permission);
    }
    $basefull = $baseyear.$nowmonth.'/';
    $isdir = is_dir($basefull);
    if($isdir == false)
    {
        mkdir($basefull,$permission);
    }
    return $basefull;
}
function get_upload_folder_nip($basedir,$nip,$ket)
{
    $CI =& get_instance();
    $permission = $CI->config->item('chmod_writable');
    $basenip = $basedir.$nip.'/';
    $isdir = is_dir($basenip);
    if($isdir == false)
    {
        mkdir($basenip,$permission);
    }
    $basefull = $basenip.$ket.'/';
    $isdir = is_dir($basefull);
    if($isdir == false)
    {
        mkdir($basefull,$permission);
    }
    return $basefull;
}
function upload_folder_pribadi($basedir)
{
    $CI =& get_instance();
    $permission = $CI->config->item('chmod_writable');
    $isdir = is_dir($basedir);
    if($isdir == false)
    {
        mkdir($basedir,$permission,true);
    }

    return $basedir;
}
function myconfig($item)
{
    $CI =& get_instance();
    return $CI->config->item($item);
}
function gen_keyword($data)
{
    $CI =& get_instance();
    $params['content'] = $data; //page content
    //set the length of keywords you like
    $params['min_word_length'] = 5;  //minimum length of single words
    $params['min_word_occur'] = 2;  //minimum occur of single words

    $params['min_2words_length'] = 3;  //minimum length of words for 2 word phrases
    $params['min_2words_phrase_length'] = 10; //minimum length of 2 word phrases
    $params['min_2words_phrase_occur'] = 2; //minimum occur of 2 words phrase

    $params['min_3words_length'] = 3;  //minimum length of words for 3 word phrases
    $params['min_3words_phrase_length'] = 10; //minimum length of 3 word phrases
    $params['min_3words_phrase_occur'] = 2; //minimum occur of 3 words phrase
    $params['encoding'] = "iso-8859-1";

    $CI->load->library('autokeyword',$params);
    return $CI->autokeyword->get_keywords();
}
function get_user_agent()
{
    $CI =& get_instance();
    $CI->load->library('user_agent');
    if ($CI->agent->is_browser())
    {
        $agent = $CI->agent->browser().' '.$CI->agent->version();
    }
    elseif ($CI->agent->is_robot())
    {
        $agent = $CI->agent->robot();
    }
    elseif ($CI->agent->is_mobile())
    {
        $agent = $CI->agent->mobile();
    }
    else
    {
        $agent = 'Unidentified User Agent';
    }
    return "You're using ".$agent." in ".$CI->agent->platform()." with IP Address ".$CI->input->ip_address();
}
function append_string_if_notexists($key,$string,$separator='#')
{
    if($string == '') return $key;
    $exp = explode($separator,$string);
    if(!in_array($key,$exp))
    {
        $string[] = $key;
    }
    $exp = remove_empty_values($exp);
    return implode($separator,$exp);
}
function swap_date($date)
{
    if(!is_array($date)) return false;
    if(count($date) != 3) return false;
    if(!checkdate($date[1],$date[0],$date[2])) return false;
    return $date[2].'-'.$date[1].'-'.$date[0];
}
function pecah($uang,$delimiter='.')
{
    if($uang == '' || $uang == 0)
    {
        $rupiah = '0';
        return $rupiah;
    }
    $neg = false;
    if($uang<0)
    {
        $neg = true;
        $uang = abs($uang);
    }
    $rupiah = number_format($uang,0,',',$delimiter);
    if($neg)
    {
        $rupiah = '('.$rupiah.')';
    }
    return $rupiah;
}


function terbilang($bilangan)
{
    if($bilangan=='' || $bilangan==0)
        return "nol";
    $angka = array('0','0','0','0','0','0','0','0','0','0',
                 '0','0','0','0','0','0');
    $kata = array('','satu','dua','tiga','empat','lima',
                'enam','tujuh','delapan','sembilan');
    $tingkat = array('','ribu','juta','milyar','triliun');

    $panjang_bilangan = strlen($bilangan);

    /* pengujian panjang bilangan */
    if ($panjang_bilangan > 15) {
    $kalimat = "Diluar Batas";
    return $kalimat;
    }

    /* mengambil angka-angka yang ada dalam bilangan,
     dimasukkan ke dalam array */
    for ($i = 1; $i <= $panjang_bilangan; $i++) {
    $angka[$i] = substr($bilangan,-($i),1);
    }

    $i = 1;
    $j = 0;
    $kalimat = "";


    /* mulai proses iterasi terhadap array angka */
    while ($i <= $panjang_bilangan) {

    $subkalimat = "";
    $kata1 = "";
    $kata2 = "";
    $kata3 = "";

    /* untuk ratusan */
    if ($angka[$i+2] != "0") {
      if ($angka[$i+2] == "1") {
        $kata1 = "seratus";
      } else {
        $kata1 = $kata[$angka[$i+2]] . " ratus";
      }
    }

    /* untuk puluhan atau belasan */
    if ($angka[$i+1] != "0") {
      if ($angka[$i+1] == "1") {
        if ($angka[$i] == "0") {
          $kata2 = "sepuluh";
        } elseif ($angka[$i] == "1") {
          $kata2 = "sebelas";
        } else {
          $kata2 = $kata[$angka[$i]] . " belas";
        }
      } else {
        $kata2 = $kata[$angka[$i+1]] . " puluh";
      }
    }

    /* untuk satuan */
    if ($angka[$i] != "0") {
      if ($angka[$i+1] != "1") {
        $kata3 = $kata[$angka[$i]];
      }
    }

    /* pengujian angka apakah tidak nol semua,
       lalu ditambahkan tingkat */
    if (($angka[$i] != "0") OR ($angka[$i+1] != "0") OR
        ($angka[$i+2] != "0")) {
      $subkalimat = "$kata1 $kata2 $kata3 " . $tingkat[$j] . " ";
    }

    /* gabungkan variabe sub kalimat (untuk satu blok 3 angka)
       ke variabel kalimat */
    $kalimat = $subkalimat . $kalimat;
    $i = $i + 3;
    $j = $j + 1;

    }

    /* mengganti satu ribu jadi seribu jika diperlukan */
    if (($angka[5] == "0") AND ($angka[6] == "0")) {
    $kalimat = str_replace("satu ribu","seribu",$kalimat);
    }

    return trim($kalimat);

}
function get_array_date($in)
{
    if($in == '' || strlen($in) != 10) return array('','','');
    $tgl = substr($in,8,2);
    $bln = substr($in,5,2);
    $thn = substr($in,0,4);
    if(!checkdate($bln,$tgl,$thn)) return array('','','');
    return array($tgl,$bln,$thn);
}
function load_tcpdf()
{
    require_once('tcpdf/tcpdf.php');
}
function php_mailer_send($address,$subject,$message)
{
    $CI =& get_instance();
    $CI->load->helper('email');
    require_once('phpmailer/class.phpmailer.php');

    $mail = new PHPMailer();
    $mail->IsSMTP();                            // telling the class to use SMTP
    $mail->IsHTML(false);
    $mail->SMTPDebug    = 1;                      // enables SMTP debug information (for testing)
                                                // 1 = errors and messages
                                                // 2 = messages only
    $mail->SMTPAuth     = true;                   // enable SMTP authentication
    $mail->Host         = "mail.unnes.ac.id";     // sets the SMTP server
    $mail->Port         = 25;                     // set the SMTP port for the GMAIL server
    $mail->Username     = "anggy.trisnawan@it.unnes.ac.id";  // SMTP account username
    $mail->Password     = "tigaroda";             // SMTP account password
    $mail->SMTPAuth     = true;
    $mail->SMTPSecure   = "tls";
    $mail->Encoding     = "quoted-printable";
    $mail->LE           = "\r\n";
    $mail->CharSet      = "utf-8";

    $mail->AddReplyTo("do-not-reply@laporan.unnes.ac.id", "E-Kegiatan");
    $mail->SetFrom("do-not-reply@laporan.unnes.ac.id", "E-Kegiatan");
    $mail->Subject = $subject;

    foreach($address as $id=>$email)
    {
        if(valid_email($email) == false) continue;
        $mail->ClearAddresses();
        $mail->AddAddress($email);
        $mail->Body = $message[$id];
        if(!$mail->Send())
        {
            if(from_session('user_id') == 1)
                echo "Mailer Error: " . $mail->ErrorInfo;
        }
    }
}