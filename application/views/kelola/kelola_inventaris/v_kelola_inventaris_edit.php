<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Inventaris</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'kode_inventaris','value'=>$row->kode_inventaris,'class'=>'form-control'));?>
            <?php echo form_error('kode_inventaris');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Simak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_simak','value'=>$row->kode_simak,'class'=>'form-control'));?>
            <?php echo form_error('kode_simak');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_dropdown('lokasi',$lokasi,$row->lokasi,'id="lokasi_penyimpanan" class="form-control select2"');?>
            <?php echo form_error('lokasi', '<span class="error-span">', '</span>'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_dropdown('sumber_pendanaan',$sumber_pendanaan,$row->sumber_pendanaan,'id="master_nama_alat" class="form-control select2"');?>
            <?php echo form_error('sumber_pendanaan', '<span class="error-span">', '</span>'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','value'=>$row->harga,'class'=>'form-control'));?>
            <?php echo form_error('harga');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pembelian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_pembelian','type'=>'date','value'=>$row->tanggal_pembelian,'class'=>'form-control'));?>
            <?php echo form_error('tanggal_pembelian');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <select name="kondisi" id=""class="form-control">
            <?php if ($row->kondis == 'Baik') {
                echo '<option value="Baik">Baik</option>';
                echo '<option value="Rusak">Rusak</option>';
            }else {
                echo '<option value="Baik">Baik</option>';
                echo '<option value="Rusak">Rusak</option>';
            }
            ?>
            </select>
            <?php echo form_error('kondisi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_inventaris/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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