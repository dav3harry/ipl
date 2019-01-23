<?php  
session_start();
require_once "config/koneksi.php";
if(!isset($_SESSION['user'])){
  header("Location: login.php");
}
$adminId = $_SESSION['user'];
$resPanitia = mysqli_query($conn, "SELECT * FROM user WHERE id='$adminId'");
$rowPanitia = mysqli_fetch_assoc($resPanitia);
$rumahID = $rowPanitia['rumah_id'];
/*
$jumlahPerHalaman = 100;
@$page = $_GET['page'];
if(empty($page)){
    $page = 1;
}
$batas = ($page - 1) * $jumlahPerHalaman;
$next = $page + 1;
$prev = $page - 1;
$totalData = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM siswa"));
*/
$resData = mysqli_query($conn, "SELECT * FROM siswa");
/*
$jumlahHalaman = ceil($totalData / $jumlahPerHalaman);
*/
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php include('config/title.php'); ?>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="shortcut icon" type="images/x-icon" href="images/favicon.png">
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $("[name='search']").on("keyup", search);
  function search(){
    var keyword = $("[name='search']").val();
    $.get({
      url : "rest/siswa.php",
      data : {
        mode:"search", 
        keyword : keyword
      },
      success : function(data){
        $("table tbody").html(data);
      }
    });
  }
  });
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>IPL</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>IPL Payment</b> | User</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="images/user.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $rowPanitia['nama']; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <?php include('config/nav_user.php'); ?>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Selamat Datang, <?php echo $rowPanitia['nama']; ?>!</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                <div class="col-sm-12">
                Selamat datang di Panel Member IPL Payment, <?php echo $rowPanitia['nama']; ?>!
                </div>
                <!--
                  <div class="col-sm-4"><input type="text" name="search" class="form-control input-sm" placeholder="Cari NISN / Nama"><br>
    
                  </div>
                  <div class="col-sm-8">
                  </div>
                  -->
                </div>
                <!--
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>NISN</th>
                  <th>Nama</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                  <?php $no = 1; while($rowData = mysqli_fetch_assoc($resData)){ ?>
                  <tr>
                    <td><?php echo $no; ?></td>
                    <td><?php echo $rowData['nisn']; ?></td>
                    <td><?php echo $rowData['nama']; ?></td>
                    <td><a href="detail.php?id=<?php echo $rowData['id']; ?>"><i class="fa fa-search"></i></a></td>
                  </tr>
                <?php $no++; } ?>
                </tbody>
              </table>
              -->
              <!--
              <?php //if($jumlahHalaman > 1){ ?>
                <ul class="pager">
                <?php //if($prev != 0){ ?>
                <li class="previous"><a href="index.php?page=<?php //echo $prev; ?>"><span aria-hidden="true">&larr;</span> Sebelumnya</a></li>
                <?php //} ?>
                <?php //if($next <= $jumlahHalaman){ ?>
                <li class="next"><a href="index.php?page=<?php //echo $next; ?>">Selanjutnya <span aria-hidden="true">&rarr;</span></a></li>
                </ul>
                <?php //} ?>
              <?php //} ?>
              -->
            </div>
            <!-- /.box-body -->
          </div>
          <div class="row">
        <div class="col-lg-6 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3>
                  <?php $viz = "SELECT * FROM tagihan WHERE rumah_id='$rumahID' AND status='0' ";
 
          $connStatue = $conn->query($viz);
           
          $numberOfRows = mysqli_num_rows($connStatue);
           
          echo $numberOfRows; 
          //this echo out the total number of rows returned from the query
           ?>
            
          </h3>

                <p>Belum Lunas</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="riwayat.php" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-6 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3>
                  <?php $viz = "SELECT * FROM tagihan WHERE rumah_id='$rumahID' AND status='1' ";
 
          $connStatue = $conn->query($viz);
           
          $numberOfRows = mysqli_num_rows($connStatue);
           
          echo $numberOfRows; 
          //this echo out the total number of rows returned from the query
           ?>
            
          </h3>

                <p>Menunggu Approval</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
               <a href="riwayat.php" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2018 Kelompok 10.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
