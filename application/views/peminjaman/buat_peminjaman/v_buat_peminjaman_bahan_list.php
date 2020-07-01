<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
     
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
              <div class="progress">
                    <div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="">60% </span>
                    </div>
              </div>
            <h3 class="box-title">Langkah 2 (pilih bahan)- Laboratorium Silandik</h3>
          </div>
          
    
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Bahan</th>
                <th>Stock</th>
                <th>Lokasi</th>
                <th>Kondisi</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->stock?></td>
            <td align="center"><?=$row->lokasi?></td>
            <td align="center"><?=$row->kondisi?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6' || $sesi == '7' || $sesi == '8') {
                echo button('load_silent("peminjaman/buat_peminjaman/form/sub/'.$row->id.'","#modal")','','btn btn-warning fa fw fa-cart-arrow-down','data-toggle="tooltip" title="Tambah Bahan"');
              } else {
                # code...
              }
              ?>
            </td>
          </tr>

        <?php endforeach;?>
        </tbody>
            </table>
            <?php
              echo button('load_silent("peminjaman/buat_peminjaman/","#content")',' Pilih Alat','btn btn-info fa fw fa-arrow-left','data-toggle="tooltip" title="Pilih Alat"');
           ?>
            <div class="pull-right">
            <?php
              echo button('load_silent("peminjaman/buat_peminjaman/pilih_bahan/")',' Pilih Bahan','btn btn-info fa fw fa-arrow-right','data-toggle="tooltip" title="Pilih Bahan"');
           ?>
           </div>
          </div>
        </>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>