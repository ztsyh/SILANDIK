<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Lokasi Penyimpanaan Lab</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/lokasi_penyimpanan/form/base","#modal")','Tambah Data Lokasi','btn btn-success');
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
                <th>Nama Lokasi Penyimpanan</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($lokasi_penyimpanan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_lokasi_penyimpanan?></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/lokasi_penyimpanan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
            } else {
                # code...
              }
              ?>
              <a href="<?= site_url('kelola/lokasi_penyimpanan/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus data lokasi?')"><i class="fa fa-trash"></i></a>

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
        <b>
          <a href="<?php if(isset($_SERVER['HTTP_REFERER'])){echo $_SERVER['HTTP_REFERER'];}?>">Kembali</a>
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