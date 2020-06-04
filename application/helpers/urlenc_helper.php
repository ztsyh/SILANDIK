<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function decrypt($string)
{
    $CI =& get_instance();
    $encryption_key = $CI->config->item('encryption_key');
    assert(isset($string) === TRUE);
    assert(isset($encryption_key) === TRUE);	
    $result = '';
    $string = base64_decode($string);
    
    for ($i = 0; $i < strlen($string); $i++)
    {
        $char    = substr($string, $i, 1);
        $keychar = substr($encryption_key, ($i % strlen($encryption_key)) - 1, 1);
        $char    = chr(ord($char) - ord($keychar));
        $result .= $char;
    }	
    return $result;
}
function encrypt($string)
{
    $CI =& get_instance();
    $encryption_key = $CI->config->item('encryption_key');
    assert(isset($string) === TRUE);
    assert(isset($encryption_key) === TRUE);
    
    $string = (string) $string;
    $result = '';
    
    for ($i = 0; $i < strlen($string); $i++)
    {
        $char    = substr($string, $i, 1);
        $keychar = substr($encryption_key, ($i % strlen($encryption_key)) - 1, 1);
        $char    = chr(ord($char) + ord($keychar));
        $result .= $char;
    }	
    return base64_encode($result);
}

 
function url_base64_encode($str)
{
    return strtr(base64_encode($str),
        array(
        '+' => '.',
        '=' => '-',
        '/' => '~'
        )
    );
}
 
function url_base64_decode($str)
{
    return base64_decode(strtr($str,
        array(
        '.' => '+',
        '-' => '=',
        '~' => '/'
        )
    ));
}
