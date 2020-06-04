<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class='extra_menu'>
	<div class='f_left'>

	</div>
	<div class='f_right'>
		<?php
		echo button('load_silent("cms/manage/add_menu_grup","#divsubcontent")','Tambah Grup Baru','btn btn-primary')." ";
		?>
	</div>
</div>

<table class='table table-hover' width='100%'>
	<thead>
	<tr>
		<th width="3%">No</th>
		<th width="15%">Nama Grup Menu</th>
		<th width="15%"></th>
	</tr>
	</thead>
	<tbody>
<?php
	$no = 0;

	foreach($grup->result() as $row):
		$no++;
	?>

	<tr class='superlink'>
		<td><?php echo $no;?></td>
		<td><?php echo $row->nama_grup;?></td>
		<td>
			<?php echo button('load_silent("cms/manage/edit_menu_grup/'.$row->id_grup_menu.'","#divsubcontent")','Edit','fa fa-edit btn btn-warning');?>
			<?php echo button_confirm("Anda yakin menghapus grup menu : ".$row->nama_grup."?","cms/manage/delete_menu_grup/".$row->id_grup_menu,"#divsubcontent",'Hapus','fa fa-trash-o btn btn-danger');?>
		</td>

	</tr>

<?php endforeach;?>
	</tbody>
</table>

<div class='data_info' style='margin-top:10px'>
	<div class='totaldata'>
		<?php if(isset($datainfo)) echo $datainfo;?>
	</div>
	<div class='datapaging'>

	</div>
</div>
<div class='clear'></div>