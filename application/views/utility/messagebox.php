<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
switch($type)
{
    case 'error':   $stick = true;break;
    default:$stick = false;
}
?>
<script type='text/javascript'>
    var mtype = "<?php echo $type;?>";
    $(function(){
        if(mtype == "error")
        {
            $.notifications("<?php echo $text;?>",{type:"<?php echo $type;?>",stick:true,timeout:5000});
        }
        else
        {
            $.notifications("<?php echo $text;?>",{type:"<?php echo $type;?>",stick:false,timeout:5000});
        }
    });
</script>