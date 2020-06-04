<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Profile extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
      $this->fungsi->restrict();
      $this->load->model('cms/m_profile');
  }
  public function index()
  {
    $this->fungsi->check_previleges('profil');
    $nipc=from_session('nip_cari');
    $nip=from_session('nip');
    if ($nip!=$nipc) {
      $data = array(
                   'nip_cari'  => $nip
               );
      $this->session->set_userdata($data);
    }
    $this->load->helper('asset');
    $user=from_session("username");
    $data['last_activities']=$this->m_profile->lihat_log_profile($user);
    $data['title']="PROFIL";
    $this->load->view('cms/profile',$data);
  }  
  public function profile_by_nip()
  {
    // $this->fungsi->check_previleges('profil');
    $nip=$this->uri->segment(4);
    $data = array(
                   'nip_cari'  => $nip
               );
    $this->session->set_userdata($data);
    $this->load->helper('asset');
    $user=from_session("username");
    $data['last_activities']=$this->m_profile->lihat_log_profile($user);
    $data['title']="PROFIL";
    $this->load->view('cms/profile',$data);
    // echo from_session('nip_cari');
  }
  function edit()
  {
    $this->fungsi->check_previleges('profil');
    $this->load->helper('asset');
    $this->load->view('cms/manage/profile_edit');
  }
  function edit_user($id_user)
  {
    $user=get_post_data(array('email','alamat','no_hp'));
    $this->m_profile->ubah_identitas($user);
    $this->index();
  }
  public function update_nama()
  {
    $this->fungsi->check_previleges('profil');
    $datapost = get_post_data(array('nama','email','telp','alamat'));
    if($datapost['nama'] == '')
    {
      die;
    }
    $this->m_profile->update_user($datapost);
    $this->fungsi->catat($datapost,'Mengubah data pribadi',true);
    echo "<script>$('#namaupdate').html('".$datapost['nama']."');</script>";
  }
  public function update_password()
  {
    $this->fungsi->check_previleges('profil');
    $datapost = get_post_data(array('password_lama','password_baru','konfirmasi_password_baru'));
    if(strlen($datapost['password_lama']) < 5 || strlen($datapost['password_baru']) < 5) die;
    if($datapost['konfirmasi_password_baru'] != $datapost['password_baru']) die;
    $response = $this->m_profile->update_password_user($datapost['password_lama'],$datapost['password_baru']);
    if($response)
    {
      $this->fungsi->message_box("Password Anda sukses diupdate...","success");
      $this->fungsi->catat("Berhasil mengubah password");
      $nowtime = time();
      $this->m_common->set_user_meta(from_session('user_id'),'LAST_UPDATE_PASSWORD',$nowtime);
      $time = $this->fungsi->fixtime($nowtime);
      echo "<script>$('#passwordupdate').html('".$time."');close_form();</script>";
    }
    else
    {
      $this->fungsi->message_box("Password Lama yang Anda masukkan salah!","error");
    }
  }
  public function update_extra()
  {
    $this->fungsi->check_previleges('profil');
    $datapost = get_post_data();
    foreach($datapost as $key=>$val)
    {
      $this->m_common->set_user_meta(from_session('user_id'),strtoupper($key),$val);
    }
    echo '';
  }
  public function upload_photo()
  {
    $this->fungsi->check_previleges('profil');
    $upload_folder = get_upload_folder_nip('./files/',from_session('nip'),'foto');
    // $upload_folder = get_upload_folder('./files/');

    $config['upload_path']    = $upload_folder;
    $config['allowed_types']  = 'gif|jpg|jpeg|png';
    $config['max_size']   = '256';
    $config['max_width']      = '1024';
    $config['max_height']     = '1024';
    $config['encrypt_name']   = true;

    $this->load->library('upload', $config);
    $err = "";
    $msg = "";
    if ( ! $this->upload->do_upload('ufile'))
    {
      $err = $this->upload->display_errors('<span class="error_string">','</span>');
    }
    else
    {
      $data = $this->upload->data();
      /***********************/
      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
      /**********************/
      $config['image_library'] = 'gd2';
      $config['source_image'] = $upload_folder.$data['file_name'];
      $config['maintain_ratio'] = TRUE;
      $config['width'] = 100;
      $config['height'] = 100;

      $this->load->library('image_lib', $config);

      if ( ! $this->image_lib->resize())
      {
        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
      }
      else
      {
        $this->db->set('gambar',substr($upload_folder,2).$data['file_name']);
        $this->db->where('nip',from_session('nip'));
        $this->db->update('data_pegawai');
        $msg = "<span class='ok'>Gambar profil berhasil diproses. Silakan reload browser Anda.</span>";
        $this->fungsi->catat("Berhasil mengubah gambar profil");
      }
    }
    echo "{";
    echo     "error: '" . $err . "',\n";
    echo     "msg: '" . $msg . "'\n";
    echo "}";
  }
  function ubah_password()
  {
    die('<div class="row">
            <div class="col-md-12">
              <div class="box box-default">
                <div class="box-header with-border">
                  <i class="fa fa-warning"></i>
                  <h3 class="box-title">Perhatian</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  
                  <div class="alert alert-warning alert-dismissible">
                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                    <h4><i class="icon fa fa-warning"></i> PENGUMUMAN</h4>
                    PINDAH PASSWORD SILAHKAN MELALUI AUTH
                  </div>
                  <a href="http://auth.umrah.ac.id" target="_blank" class="btn btn-info" role="button">KE AUTH --></a>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->');
   $this->load->library('form_validation');
    $config = array(

        array(
          'field' => 'password',
          'label' => 'Password Lama',
          'rules' => 'trim|required|alpha_dash|callback_password_check'
        ),
        array(
          'field' => 'password_b',
          'label' => 'Password Baru',
          'rules' => 'trim|required|min_length[5]|alpha_numeric|matches[password_conf]'
        ),
        array(
          'field' => 'password_conf',
          'label' => 'Konfirmasi Password',
          'rules' => 'required'
        ),

      );
    $this->form_validation->set_rules($config);
    $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

    if ($this->form_validation->run() == FALSE)
    {

      $content = $this->load->view('cms/manage/form_ubah_password','',true);
      $header = "Form Ubah Password";
      $subheader = "Untuk merubah password mohon masukkan password lama anda";
      $buttons[] = button('document.fgantipass.reset()','Reset Form','btn btn-default');
      $buttons[] = button('load_silent("cms/profile","#content")','Batalkan','btn btn-danger','data-dismiss="modal"');
      echo $this->fungsi->parse_formbox($header,$subheader,$content,$buttons,"");
    }
    else
    {
      $datapost = get_post_data(array('password_b'));
      $datapost['creator'] = from_session('user_id');
      $this->m_profile->ubah_password($datapost,true);
      $this->m_common->set_user_meta($this->db->insert_id(),'LAST_UPDATE_PASSWORD',time());
      $this->fungsi->run_js('load_silent("cms/profile","#content")');
      $this->fungsi->message_box("Password berhasil diubah","success");
      $this->fungsi->catat("mengubah password akun");
    }
  }

  function password_check($str)
  {
    $id=from_session('user_id');
    $this->db->where('id_user',$id);
    $query = $this->db->get('cms_user');
    $pass = $this->db->query('SELECT PASSWORD("'.$str.'") as pwd')->row()->pwd;
    if ($query->row()->password != $pass)
    {
      $this->form_validation->set_message('Password yang anda masukkan salah');
      return FALSE;
    }
    else
    {
      return TRUE;
    }
  }

}

/* End of file profile.php */
/* Location: ./application/controllers/cms/profile.php */