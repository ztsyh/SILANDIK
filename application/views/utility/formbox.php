<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<script type='text/javascript'>
    <?php if(isset($js)):?>
    $(function(){
        <?php echo $js;?>
    });
    <?php endif;?>
</script>

<style type='text/css'>
    .formbox_content{
	height:auto;
    }
</style>
<div class="row">
              <div class="col-sm-12">
                <div class="page-header">

                  <div class="clearfix">
                    <h3 class="content-title pull-left"><?php if(isset($header)) echo $header;?></h3>
                  </div>

                </div>
              </div>
            </div>
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title"><?php if(isset($subheader)) echo $subheader;?></h3>
    </div>
<?php if(isset($message) && $message!=''){?>
<div class="alert alert-danger display-none" style="display: block;">
                                                    <a class="close" aria-hidden="true" href="#" data-dismiss="alert">×</a>
                                                     <?php echo $message;?>
                                                </div>
                                              <?php } ?>

        <?php if(isset($content)) echo $content;?>
<div class="box-footer">
                    <?php if(isset($extra_button))
                      {
                          foreach($extra_button as $button)
                              echo $button." ";
                      }
                      ?>
</div> 
</div>


        <div class="sub-container"></div>