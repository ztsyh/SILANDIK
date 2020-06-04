<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<script type='text/javascript'>
	$(function(){
		convert_paging('#content');
		$('#keyword').focus().setCursorPosition($('#keyword').val().length);
		nicetable();
		$('#keyword').keyup(function(){
			if($(this).val().length > 3)
			{
				search_user();
			}
			else
			{
				if($(this).val().length == 0)
				{
					load_silent('cms/catatan/catat/','#content');
				}
			}
		});
	});
	function search_user()
	{
		send_form(document.fsearchuser,'cms/catatan/search_user/','#content');
	}
</script>

<div class="row">
	<div class="col-md-12">
		<div class="box border primary">
			<div class="box-header">
				<div class='pull-left'>
				<h4><i class="fa fa-users"></i>Aktivitas Pengguna</h4>
				</div>
				<div class='pull-right'>
				<?php
					echo form_open('',array('name'=>'fsearchuser'));
					$key = "";
					if(isset($search)) $key = from_session('keyword');
					?>
						 <div class="input-group">
							<?php echo "<input type='text' name='keyword' id='keyword' value='$key' class='form-control' placeholder='Cari Disini...'>"?>
						 </div>
					<?php
					   echo form_close();
					?>
				</div>
			</div>
			
			<div class="box-body">
			<div class="table table-responsive">
			<table class="table table-hover">
				<thead>
				  <tr>
					<th width="15%" align='left'>User</th>
					<th width="15%" align='left'>IP</th>
					<th width="20%" align='left'>Waktu</th>
					<th width="50%" align='center'>Deskripsi</th>
				  </tr>
				</thead>
				<tbody>
					<?php foreach($user->result() as $row):?>
				  		<td><?php echo $row->user;?></td>
						<td><?php echo $row->ip;?></td>
						<td><?php echo $row->time;?></td>
						<td align='center'><?php echo $row->kegiatan;?></td>

					</tr>

				<?php endforeach;?>
				</tbody>
			  </table>
			<div class="row">
				<div class="col-sm-12">
					<div class='pull-left'>
						<div class='dataTables_info'>
							<?php if(isset($datainfo)) echo $datainfo;?>
						</div>
					</div>
						<div class='pull-right'>
							<?php echo $paging;?>
						</div>
				</div>
				<div class="clearfix"></div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>

