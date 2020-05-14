<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $this->config->item('title')?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <?php echo css('assets/bootstrap/css/bootstrap.min.css')?>
    <link rel="shortcut icon" href="<?php echo base_url('assets/img/title.png'); ?>" />
    <!-- Font Awesome -->
    <?php echo css('assets/css/fa.css')?>
    <!-- Ionicons -->
    <?php echo css('assets/css/ionicons.min.css')?>
    <!-- Theme style -->
    <?php echo css('assets/css/AdminLTE.min.css')?>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <!-- /.login-logo -->
      
      <div class="login-box-body">
        <h4>Login <b><?php echo $this->config->item('project')?></b></h4>
        <?php echo form_open('login',array('name'=>'flogin')); ?>
          <div class="form-group has-feedback">
            	<input placeholder="Username" type="text" id="username" name="username" value="<?php echo set_value('username'); ?>" class="form-control"  >
				<?php echo form_error('username', '<span class="error-span">', '</span>'); ?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
				<input placeholder="Password" type="password" class="form-control" id="password" name="password" value="<?php echo set_value('password'); ?>">
				<?php echo form_error('password', '<span class="error-span">', '</span>'); ?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
            <div class="form-group">
			<label for="exampleInputPassword1"></label>
			<?php echo $captcha['image'];?>
		  </div>
		  <div class="form-group has-feedback">
			<input type="text" name="captcha" placeholder="Security Code" class="form-control" id="exampleInputEmail1" >
			<span class="glyphicon glyphicon-qrcode form-control-feedback"></span>
      <?php echo form_error('captcha', '<span class="error-span">', '</span>'); ?>
		  </div>

          <div class="row">
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">LOGIN</button>
            </div><!-- /.col -->
          </div>
        </form>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <?php echo js('assets/plugins/jQuery/jQuery-2.1.4.min.js') ?>
    <?php echo js('assets/js/jquery-ui.min.js') ?>
    <script>
      $(function () {
        $('#username').focus();
      });
    </script>
  </body>
</html>
