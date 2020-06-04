<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<script type='text/javascript'>
	var url=<?php echo '"'.$url.'"' ?>;
	$(function(){
		load_silent(url,'#divsubcontent');
	});
</script>

<div id='divsubcontent'></div>