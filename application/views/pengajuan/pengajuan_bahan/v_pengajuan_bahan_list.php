<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Pengajuan Bahan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' ) {
                echo button('load_silent("pengajuan/pengajuan_bahan/form/base","#modal")','Tambah Pengajuan Bahan','btn btn-success');
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
                <th>Periode</th>
                <th>Nama Bahan</th>
                <th>Merk</th>
                <th>Jenis</th>
                <th>Estimasi Jumlah</th>
                <th>Satuan</th>
                <th>Harga</th>
                <th>Nama Lab</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
        <?php 
          $i = 1;
          foreach($pengajuan_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->merk?></td>
            <td align="center"><?=$row->jenis?></td>
            <td align="center"><?=$row->estimasi_jumlah?></td>
            <td align="center"><?=$row->satuan?></td>
            <td align="center">Rp. <?=number_format($row->harga)?></td>
            <td align="center"><?=$row->nama_lab?></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3'|| $sesi == '4'|| $sesi == '5'|| $sesi == '7') {
                echo button('load_silent("pengajuan/pengajuan_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
               <?php echo button('load_silent("pengajuan/pengajuan_bahan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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