<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function css($file)
{
    if(stristr($file,'http://') == false)
    {
        $href = base_url($file);
    }
    else
    {
        $href = $file;
    }
    return '<link href="'.$href.'" rel="stylesheet" type="text/css" media="screen" />';
}
function js($file)
{
    if(stristr($file,'http://') == false)
    {
        $href = base_url($file);
    }
    else
    {
        $href = $file;
    }
    return '<script type="text/javascript" src="'.base_url($file).'"></script>';
}
function imga($file)
{
    if(stristr($file,'http://') == false)
    {
        $href = base_url($file);
    }
    else
    {
        $href = $file;
    }
    return '<script type="text/javascript" src="'.base_url($file).'"></script>';
}
function favicon($file)
{
    return '
        <link rel="shortcut icon" href="'.base_url($file).'" type="image/x-icon">
        <link rel="icon" href="'.base_url($file).'" type="image/x-icon">
    ';
}