
<div class="col-md-12">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <!-- <div class="widget-user-header bg-black" style="background: url('<?php echo base_url();?>assets/img/photo1.png') center center;height:320px;"> -->
             <!--  <h3 class="widget-user-username"><?=from_session('nama')?></h3>
              <h5 class="widget-user-desc"><?=from_session('nama_level')?></h5>
            </div>
            <div class="widget-user-image"> -->

            
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-12 border-right">
                  <div class="description-block">
                    <?php
                  $avatar = parse_avatar(from_session('gambar'),from_session('nama'),40,'img-circle');
                ?>
                <?php echo $avatar; ?>
                    <h5 class="description-header">SELAMAT DATANG DI <?php echo $this->config->item('project')?></h5>
                    <span class="description-text"><?php echo button('load_silent("cms/user/show_editForm_user/'.from_session('id').'","#content")','Update Profil','btn bg-purple','data-toggle="tooltip" title="Update Profil"');?> 
						</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
