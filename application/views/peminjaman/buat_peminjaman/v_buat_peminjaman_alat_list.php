<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Buat Peminjaman</h3>

            <div class="box-tools pull-right">
            <?php
                $sesi = from_session('level');
                if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6'|| $sesi == '7'|| $sesi == '8') {
                echo button('load_silent("peminjaman/buat_peminjaman/form/base","#modal")','Tambah Peminjaman','btn btn-success');
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
                    <th>Kode Peminjaman</th>
                    <th>Nama Bahan</th>
                    <th>Nama Alat</th>
                    <th>Peminjam</th>
                    <th>Tanggal Peminjaman</th>
                    <th>Tanggal Pengembalian</th>
                    <th>Status</th>
                    <th>Act</th>
                </thead>
                <tbody>
                <?php $i = 1; foreach($peminjaman->result() as $row): ?>
                <tr>
                    <td align="center"><?= $i++?></td>
                    <td align="center"><?= $row->kode_peminjaman ?></td>
                    <td align="center"><?= $row->nama_bahan ?></td>
                    <td align="center"><?= $row->nama_alat ?></td>
                    <td align="center"><?= $row->peminjam ?></td>
                    <td align="center"><?= date($row->tgl_pinjam) ?></td>
                    <td align="center"><?= date($row->tgl_pengembalian) ?></td>
                    <td align="center" class="badge <?= $row->status == 'Belum Disetujui' ? 'bg-red' : 'bg-green'?>"><?= $row->status ?></td>
                    <td align="center">
                    <?php
                        $sesi = from_session('level');
                        if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6'|| $sesi == '7'|| $sesi == '8') {
                            echo button('load_silent("peminjaman/buat_peminjaman/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
                        } else {
                            
                        }
                        echo button('load_silent("peminjaman/buat_peminjaman/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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