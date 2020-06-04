<script type='text/javascript'>
        $('#myModal').modal('show');

</script>
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">
				<div class="modal-dialog" style="width:1000px;">
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal" aria-hidden="false">&times;</button>
					  <h4 class="modal-title"><?php if(isset($header)) echo $header;?></h4>
					</div>
					<div class="modal-body">
						<?php if(isset($message)) echo $message;?>
	        			<?php if(isset($content)) echo $content;?>
					</div>
					<div class="modal-footer">
						<?php if(isset($extra_button))
				        {
				            foreach($extra_button as $button)
				                echo $button." ";
				        }
				        ?>
					</div>
				  </div>
				</div>