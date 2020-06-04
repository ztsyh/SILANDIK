<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php
	if ($type == 'success') { ?>
		<script type='text/javascript'>
		    $(function(){
		        var text = "<?php echo $text;?>";
		        $.growl.notice({ title: 'Sukses', message: text});
		        // Messenger().post(text);
		    });
		</script>
<?php } else { ?>
		<script type='text/javascript'>
		    $(function(){
		        var text = "<?php echo $text;?>";
		        $.growl.error({ title: 'Gagal', message: text});
		        // Messenger().post(text);
		    });
		</script>
<?php }


?>
