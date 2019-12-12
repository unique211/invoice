<?php

class Upload extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                $this->load->helper(array('form', 'url'));
		$this->load->library('upload');
        }

        public function index()
        {
		
                $this->load->view('upload_form', array('error' => ' ' ));
        }

        public function do_upload()
        {
		
		$filename="userfile";
                $config['upload_path'] = './upload/';
  		$config['allowed_types'] = 'jpg|jpeg|png|gif';
  		$config['max_size'] = 204800;
  		$config['encrypt_name'] = False;
                $this->load->library('upload', $config);
		$this->upload->initialize($config);


                if ( ! $this->upload->do_upload($filename))
                {
                        $error = array('error' => $this->upload->display_errors());
                        $this->load->view('upload_form', $error);
                        $path=$error;
                }
                else
                {
			//$this->load->model('Main_model');
                       	//$this->Main_model->insert_images($this->upload->data());
                        $data= $this->upload->data('file_name');
                        $path=$data;
                        echo $path;
                        $this->load->view('upload_form');
                }
        }
}
?>
