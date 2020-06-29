<?php require_once ('application/views/kotak/kotak.php') ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Laboratorium</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/laboratorium/form/base","#modal")','Add New Kelola Laboratorium','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Lab</th>
                <th>Alamat Lab</th>
                <th>Korlab</th>
                <th>Laboran</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($laboratorium->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_lab?></td>
            <td align="center"><?=$row->alamat_lab?></td>
            <td align="center"><?=$row->korlab?></td>
            <td align="center"><?=$row->laboran?></td>
            <td align="center"><span class="badge badge-success"><?=$row->status ?></span></td>
            <td align="center">         
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/laboratorium/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-pencil','data-toggle="tooltip" title="Edit"');
              } else { 
              }
              ?>
              <a href="<?= site_url("kelola/laboratorium/delete/".$row->id."","#modal") ?>" class="btn btn-danger fa fa-trash"
              onclick="return confirm('Apa anda Yakin ?')">
              </a>
            </td>
          </tr>
          
        <?php endforeach;?>
        </tbody>
            </table> 
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>
