<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php
    $row = fetch_single_row($grupedit);


?>
<div class="box-body big">
<?php echo form_open('',array('name'=>'feditmenugrup','class'=>'form-horizontal','role'=>'form'));?>
<div class="form-group">
            <label class="col-sm-3 control-label">
                Nama Menu</label>
            <div class="col-sm-9">
            <?php echo form_hidden('id_grup_menu',$row->id_grup_menu); ?>
            <?php echo form_input(array('name'=>'nama_grup','value'=>$row->nama_grup,'class'=>'form-control','style'=>'width:250px'));?>
            <?php echo form_error('nama_grup');?>
     </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">
                Update</label>
            <div class="col-sm-9">
            <?php
                echo button('send_form(document.feditmenugrup,"cms/manage/edit_menu_grup/'.$row->id_grup_menu.'","#divsubcontent")','Update','btn btn-success')." ";
                echo button('load_silent("cms/manage/show_menu_grup","#divsubcontent")','Batalkan','btn btn-danger');
            ?>
     </div>
          </div>
</form>
</div>