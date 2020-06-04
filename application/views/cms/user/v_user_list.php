<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">User</h3>

            <div class="box-tools pull-right">
              <?php echo button('load_silent("cms/user/show_addForm/","#content")','Add New User','btn btn-success','data-toggle="tooltip" title="Add New User"');?> 
            </div>
          </div>

          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama</th>
                <th>Picture</th>
                <th>Username</th>
                <th>Level</th>
                <th>no HP</th>
                <th>Alamat</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($user->result() as $row):
          $avatar = parse_avatar($row->gambar,$row->nama,75,'');             
          ?>
          <tr>
            <td><?=$i++?></td>
            <td><?=$row->nama?></td>
            <td><?=$avatar?></td>
            <td><?=$row->username?></td>
            <td><?=$row->level?></td>
            <td><?=$row->no_hp?></td>
            <td><?=$row->alamat?></td>
            <td>
            <?php echo button('load_silent("cms/user/show_editForm/'.$row->id.'","#content")','Edit','btn btn-info','data-toggle="tooltip" title="Edit User"');?> 
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