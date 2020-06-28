<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','readonly'=>'readonly','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Semester</label>
            <div class="col-sm-8">
            <select name="semester" id=""class="form-control">
            <?php if ($row->semester == 'Ganjil') {
                echo '<option value="Ganjil">Ganjil</option>';
                echo '<option value="Genap">Genap</option>';
            }else {
                echo '<option value="Genap">Genap</option>';
                echo '<option value="Ganjil">Ganjil</option>';
            }
            ?>
            </select>
            <?php echo form_error('semester');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pengajuan','value'=>$row->tgl_pengajuan,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tgl_pengajuan');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Sumber Pendanaan</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('sumber_pendanaan',$sumber_pendanaan,$row->sumber_pendanaan,'id="sumber_pendanaan" class="form-control select2"');?>
                  <?php echo form_error('sumber_pendanaan', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pendanaan Turun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pendanaan_turun','value'=>$row->tgl_pendanaan_turun,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tgl_pendanaan_turun');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pajak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pajak','value'=>$row->pajak,'class'=>'form-control'));?>
            <?php echo form_error('pajak');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Status Pengajuan</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('status_pengajuan',$status_pengajuan,$row->status_pengajuan,'id="status_pengajuan" class="form-control select2"');?>
                  <?php echo form_error('status_pengajuan', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/periode_pengajuan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>