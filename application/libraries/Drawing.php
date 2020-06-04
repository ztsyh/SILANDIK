<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
require_once APPPATH."/third_party/PHPExcel/Classes/PHPExcel/Worksheet/Drawing.php"; 
 
class Drawing extends PHPExcel_Worksheet_Drawing { 
    public function __construct() { 
        parent::__construct(); 
    } 
}
