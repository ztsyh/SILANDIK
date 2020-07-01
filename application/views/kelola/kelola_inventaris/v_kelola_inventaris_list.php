<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Inventaris</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_inventaris/form/base","#modal")','Tambahkan Inventaris','btn btn-success');
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
                <th>Kode Inventaris</th>
                <th>Kode Simak</th>
                <th>Lokasi</th>
                <th>Pendanaan</th>
                <th>Harga</th>
                <th>Tanggal Pembelian</th>
                <th>Kondisi</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_inventaris->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kode_inventaris?></td>
            <td align="center"><?=$row->kode_simak?></td>
            <td align="center"><?=$row->lokasi_penyimpanan?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center">Rp. <?=number_format($row->harga)?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_pembelian))?></td>
            <td align="center"><span class="badge badge-success"><?=$row->kondisi?></span></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '4' || $sesi == '6') {
                echo button('load_silent(kelola/kelola_inventaris/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
            <?php
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '2'|| $sesi == '4' || $sesi == '6') {
             echo button('load_silent("kelola/kelola_inventaris/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
            } else {
              # code...
            }
             ?>   
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