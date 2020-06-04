<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<div class="box-body big">
<?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
<div class="form-group">
            <label class="col-sm-3 control-label">
                Nama Menu</label>
            <div class="col-sm-9">
            <?php echo form_input(array('name'=>'nama_grup','value'=>set_value('grupname'),'class'=>'form-control','style'=>'width:250px'));?>
            <?php echo form_error('nama_grup');?>
        </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">
                Simpan</label>
            <div class="col-sm-9">
            <?php
                echo button('send_form(document.faddmenugrup,"cms/manage/add_menu_grup/","#divsubcontent")','Simpan','btn btn-success')." ";
                echo button('load_silent("cms/manage/show_menu_grup","#divsubcontent")','Batalkan','btn btn-danger');
            ?>
        </div>
          </div>
</form>
</div>