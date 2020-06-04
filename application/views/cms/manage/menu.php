<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<script type='text/javascript'>
	function show_menu()
	{
		var menu = $('#selector_level').val();
		load_silent('cms/manage/menu/'+menu,'#content');
	}
	function check_all()
	{
		$('.menucheck').attr("checked","checked");
	}
	function uncheck_all()
	{
		$('.menucheck').removeAttr("checked");
	}
</script>

<h3 class="content-title pull-left">MANAJEMEN MENU</h3>

<?php
echo form_open('',array('name'=>'fsearchuser'));
$key = "";
if(isset($search)) $key = from_session('keyword');
?>
  

<div class="separator"></div>

<div class="row">
	<div class="col-md-12">
		<div class="box border primary">
			<div class="box-header">
				<div class="pull-left">
					<?php echo form_open('',array('name'=>'fsearchuser','class'=>'form-horizontal','role'=>'form'));?>
					<div class="form-group">
			        <label class="col-sm-3 control-label">Previlege</label>
			        <div class="col-sm-9">
			          <?php echo form_dropdown('',$level,$cur_level,'id="selector_level" class="form-control" onchange="show_menu()"');?>
			          <?php echo form_error('aktif', '<span class="error-span">', '</span>'); ?>
			        </div>
			      </div>
			      <?php echo form_close();?>
			     </div>
			     <div class='pull-right'>
					<?php
					echo button('load_silent("cms/manage/add_menu","#content")','Tambah Menu Baru','btn btn-primary')." ";
					echo button('load_silent("cms/manage/menu_grup","#modal")','Manajemen Grup','btn btn-primary');
					?>
				</div>
			</div>
			<div class="box-body">
<?php
	echo form_open('',array('name'=>'fmenumanage','class'=>'form-horizontal','role'=>'form'));
	echo form_hidden('cur_level',$cur_level);
?>
<table class='table table-hover' width='100%'>
	<thead>
	<tr>
		<th width="3%" align='left'>No</th>
		<th width="15%" align='left'>Nama Menu</th>
		<th width="20%"></th>
		<th width="30%" align='left'>Deskripsi</th>
		<th width="10%" align='left'>Alias</th>
		<th width="5%" align='center'>Akses</th>
	</tr>
	</thead>
	<tbody>
<?php
	$no = 0;
	$printed_group = array();
	foreach($menu->result() as $row):
		$allowed_level = explode('+',$row->allowed_level);
		$allowed_level = remove_empty_values($allowed_level);
		if(in_array($cur_level,$allowed_level))
		{
			$check = true;
		}
		else
		{
			$check = false;
		}
		$inactive = "class='superlink'";
		if($row->aktif == 0)
		{
			$inactive = "class='inactive superlink'";
		}
		$no++;

	if(!in_array($row->grup,$printed_group)):
?>
	<tr class='spot'>
		<td colspan='6'><?php echo $row->nama_grup;?></td>
	</tr>
<?php
	$printed_group[] = $row->grup;
	endif;?>

	<tr <?php echo $inactive;?>>
		<td><?php echo $no;?></td>
		<td><?php echo $row->nama;?></td>
		<td>
			<?php echo button('load_silent("cms/manage/edit_menu/'.$row->id.'","#content")','','fa fa-edit btn btn-warning','data-toggle="tooltip" title="Edit"');?>
			<?php echo button_confirm("Anda yakin menghapus menu : ".$row->nama."?","cms/manage/delete_menu/".$row->id,"#content",'','fa fa-trash-o btn btn-danger','data-toggle="tooltip" title="Hapus"');?>
		</td>
		<td><?php echo $row->deskripsi;?></td>
		<td><?php echo $row->alias;?></td>
		<td align='center'><?php echo form_checkbox('allowed_level['.$row->id.']',$cur_level,$check,'class="menucheck"');?></td>
	</tr>

<?php endforeach;?>
	</tbody>
</table>
<?php echo form_close();?>

<div class='row'>

	<div class='pull-right'>
		<?php echo button('check_all()','Check all','fa fa-check-square btn btn-warning');?>
		<?php echo button('uncheck_all()','Uncheck all','fa fa-minus-square-o btn btn-success');?>
		<?php echo button('send_form(document.fmenumanage,"cms/manage/save_menu_manage/","#content")','Simpan Perubahan','fa fa-save btn btn-primary');?>
	</div>
</div>

			</div>
		</div>
	</div>
</div>
