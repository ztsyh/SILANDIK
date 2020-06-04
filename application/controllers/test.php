<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class  Test extends CI_Controller {

	public function index()
	{
		for ($i=0; $i < 1000000; $i++) {
			echo "a";
		}
	}

}

/* End of file test */
/* Location: ./application/controllers/test */