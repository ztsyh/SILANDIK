<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Periode Pengajuan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' ) {
                echo button('load_silent("pengajuan/periode_pengajuan/form/base","#modal")','Tambah Periode Pengajuan','btn btn-success');
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
                <th>Id Pengajuan</th>
                <th>Semester</th>
                <th>Tanggal Pengajuan</th>
                <th>Sumber Pendanaan</th>
                <th>Tanggal Pendanaan Turun</th>
                <th>Pajak</th>
                <th>Status pengajuan</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
        <?php 
          $i = 1;
          foreach($periode_pengajuan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id?></td>
            <td align="center"><?=$row->semester?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tgl_pengajuan))?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tgl_pendanaan_turun))?></td>
            <td align="center">Rp. <?=number_format($row->pajak)?></td>
            <td align="center"><span class="badge badge-success"><?=$row->status_pengajuan?></span></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                echo button('load_silent("pengajuan/periode_pengajuan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
               <?php echo button('load_silent("pengajuan/periode_pengajuan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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