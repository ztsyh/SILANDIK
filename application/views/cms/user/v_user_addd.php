<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">From Add User</h3>

                <div class="box-tools pull-right">
                  <?php echo button('load_silent("cms/user/formadd/","#content")','Reload Page','btn btn-danger','data-toggle="tooltip" title="Reload"');?> 
                </div>
            </div>
          <div class="box-body">
            <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
            
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama','id'=>'nama','class'=>'form-control'));?>
                <?php echo form_error('nama');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Username</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'username','id'=>'username','class'=>'form-control'));?>
                <?php echo form_error('username');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Password</label>
                <div class="col-sm-8">
                <?php echo form_password(array('name'=>'password','id'=>'password','class'=>'form-control'));?>
                <?php echo form_error('password');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Re Password</label>
                <div class="col-sm-8">
                <?php echo form_password(array('name'=>'re_password','id'=>'re_password','class'=>'form-control'));?>
                <?php echo form_error('re_password');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Level</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('level',$level,set_value('id'),'id="level" class="form-control select2"');?>
                  <?php echo form_error('level', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Bagian</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('bagian',$bagian,set_value('id'),'id="bagian" class="form-control select2"');?>
                  <?php echo form_error('bagian', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">Picture</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">No Hp</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'no_hp','id'=>'no_hp','class'=>'form-control'));?>
                <?php echo form_error('no_hp');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Alamat</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'alamat','id'=>'alamat','class'=>'form-control'));?>
                <?php echo form_error('alamat');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Save</label>
                <div class="col-sm-8 tutup">
                <?php
                //echo button('send_form(document.faddmenugrup,"master/produk/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
                ?>
                <input onclick="save()" type="submit" value="Save" class="btn btn-success">
                </div>
            </div>
        </form>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    $("#ufile").fileinput({
    'showUpload'            :true
    });
    $(".select2").select2();
    $('.fileinput-upload-button').hide();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});

function save()
{
    var pass = $('#password').val();
    var re_pass = $('#re_password').val();
    if (pass != re_pass) {
        $.growl.error({ title: 'Gagal', message: 'Password is not match' });
        $('#password').val('');
        $('#re_password').val('');
    } else{
        $.ajaxFileUpload
          ({
            url:site+'cms/user/show_addForm',
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                nama        : $("#nama").val(),
                username    : $("#username").val(),
                password    : $("#password").val(),
                level       : $("#level").val(),
                no_hp       : $("#no_hp").val(),
                alamat      : $("#alamat").val(),
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("cms/user/","#content");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })
          return false;
    };
  
}
</script>