<?php 

class Registrasi extends CI_Controller{
    public function index()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required',[
            'required' =>'Silahkan isi nama anda...'
            ]);
        $this->form_validation->set_rules('username', 'Username', 'required',[
            'required' =>'Silahkan isi username anda...'
            ]);
        $this->form_validation->set_rules('password_1', 'Password', 'required|matches[password_2]',[
            'required' =>'Silahkan isi Password anda...',
            'matches' => 'Password tidak cocok'
            ]);
        $this->form_validation->set_rules('password_2', 'Password', 'required|matches[password_1]');

        if($this->form_validation->run() == FALSE){
    
            $this->load->view('v_registrasi');
   
        }else{
            $data = array(
                'id' => '',
                'nama' => $this->input->post('nama'),
                'username' => $this->input->post('username'),
                'password' => $this->input->post('password_1'),
                'level' => 1,
            );
            $this->db->insert('cms_user', $data);
            redirect('login');
        }

    }
}

?>