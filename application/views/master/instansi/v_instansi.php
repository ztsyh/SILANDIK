<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Master Instansi</h3>

            <div class="box-tools pull-right">
              <?php echo button('load_silent("master/instansi/","#content")','Back to Product List','btn btn-success','data-toggle="tooltip" title="Back to Product List"');?> 
            </div>
          </div>
          <div class="box-body">
            <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama','id'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
                <?php echo form_error('nama');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Alamat Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'id','value'=>'1','id'=>'id','class'=>'form-control','style'=>'display:none;'));?>
                <?php echo form_input(array('name'=>'alamat','id'=>'alamat','value'=>$row->alamat,'class'=>'form-control'));?>
                <?php echo form_error('alamat');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Kode Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'kode','id'=>'kode','value'=>$row->kode,'class'=>'form-control'));?>
                <?php echo form_error('kode');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Provinsi Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'provinsi','id'=>'provinsi','value'=>$row->provinsi,'class'=>'form-control'));?>
                <?php echo form_error('provinsi');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Email Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'email','id'=>'email','value'=>$row->email,'class'=>'form-control'));?>
                <?php echo form_error('email');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Website Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'website','id'=>'website','value'=>$row->website,'class'=>'form-control'));?>
                <?php echo form_error('website');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="logo">Logo</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'logo','id'=>'logo','class'=>'form-control'));?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Telepon Instansi</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'telepon','id'=>'telepon','value'=>$row->telepon,'class'=>'form-control'));?>
                <?php echo form_error('telepon');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Kementerian</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'kementerian','id'=>'kementerian','value'=>$row->kementerian,'class'=>'form-control'));?>
                <?php echo form_error('kementerian');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Tahun Ajaran</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'tahun_ajaran','id'=>'tahun_ajaran','value'=>$row->tahun_ajaran,'class'=>'form-control'));?>
                <?php echo form_error('tahun_ajaran');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Fakultas</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_fakultas','id'=>'nama_fakultas','value'=>$row->nama_fakultas,'class'=>'form-control'));?>
                <?php echo form_error('nama_fakultas');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Dekan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_dekan','id'=>'nama_dekan','value'=>$row->nama_dekan,'class'=>'form-control'));?>
                <?php echo form_error('nama_dekan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Alamat Fakultas</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'alamat_fakultas','id'=>'alamat_fakultas','value'=>$row->alamat_fakultas,'class'=>'form-control'));?>
                <?php echo form_error('alamat_fakultas');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Telepon Fakultas</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'telepon_fakultas','id'=>'telepon_fakultas','value'=>$row->telepon_fakultas,'class'=>'form-control'));?>
                <?php echo form_error('telepon_fakultas');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Jurusan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_jurusan','id'=>'nama_jurusan','value'=>$row->nama_jurusan,'class'=>'form-control'));?>
                <?php echo form_error('nama_jurusan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Kajur</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_kajur','id'=>'nama_kajur','value'=>$row->nama_kajur,'class'=>'form-control'));?>
                <?php echo form_error('nama_kajur');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama Kalab</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_kalab','id'=>'nama_kalab','value'=>$row->nama_kalab,'class'=>'form-control'));?>
                <?php echo form_error('nama_kalab');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Telepon Jurusan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'telepon_jurusan','id'=>'telepon_jurusan','value'=>$row->telepon_jurusan,'class'=>'form-control'));?>
                <?php echo form_error('telepon_jurusan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Alamat Jurusan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'alamat_jurusan','id'=>'alamat_jurusan','value'=>$row->alamat_jurusan,'class'=>'form-control'));?>
                <?php echo form_error('alamat_jurusan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Deskripsi Jurusan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'deskripsi_jurusan','id'=>'deskripsi_jurusan','value'=>$row->deskripsi_jurusan,'class'=>'form-control'));?>
                <?php echo form_error('deskripsi_jurusan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Peta Jurusan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'peta_jurusan','id'=>'peta_jurusan','value'=>$row->peta_jurusan,'class'=>'form-control'));?>
                <?php echo form_error('peta_jurusan');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Zona Waktu</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'zona_waktu','id'=>'zona_waktu','value'=>$row->zona_waktu,'class'=>'form-control'));?>
                <?php echo form_error('zona_waktu');?>
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">Save</label>
                <div class="col-sm-8 tutup">
                <?php
                //echo button('send_form(document.faddmenugrup,"master/produk/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
                ?>
                <input onclick="save()" type="submit" value="Save" id="tombol" class="btn btn-success">
                </div>
            </div>
        </form>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    $("#logo").fileinput({
    'showUpload'            :true,
      initialPreview: '<img src="<?php echo base_url().$row->logo; ?>" class="file-preview-image">'
    });
    $('#tombol').removeAttr('disabled',false);
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});

function save()
{
    $('#tombol').attr('disabled','disabled');
    var path = $("#logo").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/instansi/edit/"+ida+"')?>",
        dataType:'json',
        data: {
            id                : $("#id").val(),
            nama              : $("#nama").val(),
            alamat            : $("#alamat").val(),
            kode              : $("#kode").val(),
            provinsi          : $("#provinsi").val(),
            email             : $("#email").val(),
            website           : $("#website").val(),
            telepon           : $("#telepon").val(),
            kementerian       : $("#kementerian").val(),
            tahun_ajaran      : $("#tahun_ajaran").val(),
            nama_fakultas     : $("#nama_fakultas").val(),
            nama_dekan        : $("#nama_dekan").val(),
            alamat_fakultas   : $("#alamat_fakultas").val(),
            telepon_fakultas  : $("#telepon_fakultas").val(),
            nama_jurusan      : $("#nama_jurusan").val(),
            nama_kajur        : $("#nama_kajur").val(),
            nama_kalab        : $("#nama_kalab").val(),
            telepon_jurusan   : $("#telepon_jurusan").val(),
            alamat_jurusan    : $("#alamat_jurusan").val(),
            deskripsi_jurusan : $("#deskripsi_jurusan").val(),
            peta_jurusan      : $("#peta_jurusan").val(),
            zona_waktu        : $("#zona_waktu").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/instansi/","#content");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/instansi/edit_file/"+ida+"')?>",
            secureuri:false,
            fileElementId:'logo',
            dataType: 'json',
            data: {
                id                : $("#id").val(),
                nama              : $("#nama").val(),
                alamat            : $("#alamat").val(),
                kode              : $("#kode").val(),
                provinsi          : $("#provinsi").val(),
                email             : $("#email").val(),
                website           : $("#website").val(),
                telepon           : $("#telepon").val(),
                kementerian       : $("#kementerian").val(),
                tahun_ajaran      : $("#tahun_ajaran").val(),
                nama_fakultas     : $("#nama_fakultas").val(),
                nama_dekan        : $("#nama_dekan").val(),
                alamat_fakultas   : $("#alamat_fakultas").val(),
                telepon_fakultas  : $("#telepon_fakultas").val(),
                nama_jurusan      : $("#nama_jurusan").val(),
                nama_kajur        : $("#nama_kajur").val(),
                nama_kalab        : $("#nama_kalab").val(),
                telepon_jurusan   : $("#telepon_jurusan").val(),
                alamat_jurusan    : $("#alamat_jurusan").val(),
                deskripsi_jurusan : $("#deskripsi_jurusan").val(),
                peta_jurusan      : $("#peta_jurusan").val(),
                zona_waktu        : $("#zona_waktu").val(),
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/instansi/","#content");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })

    };
  
  return false;
}
</script>