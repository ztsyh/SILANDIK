<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'kode','value'=>$row->kode,'class'=>'form-control'));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat atau Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alat_bahan','value'=>$row->alat_bahan,'class'=>'form-control'));?>
            <?php echo form_error('alat_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal','type'=>'date','value'=>$row->tanggal,'class'=>'form-control'));?>
            <?php echo form_error('tanggal');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Ada dan Kondisi Baik'>Ada dan Kondisi Baik</option>
          <option value ='Rusak'>Rusak</option>
          </select>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/inven_alat_bahan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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