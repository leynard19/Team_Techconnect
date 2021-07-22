<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tulong Ka-Batang | Administrator</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="bootstrap/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="bootstrap/css/scrollbar.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="bootstrap/css/adminlte.min.css">
  <link rel="stylesheet" href="bootstrap/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="bootstrap/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="bootstrap/css/buttons.bootstrap4.min.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/css/toastr.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>                          <!--bootstrap-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>           <!--bootstrap-->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
<div class="wrapper">
  <?php 
  require 'includes/dbh.inc.php';
  require 'adminnavbar.php';
  require 'adminsidebar.php'
  ?>
  <?php $timezone = date_default_timezone_set('Asia/Manila');?>
  <?php $datetime = date('Y-m-d H:i:s', time());?>
  <div class="content-wrapper">

    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        </div>
      </div>

    <section class="content" >
      <div class="container-fluid">
        <?php require'dashboard.php';?>
      </div>

      <div class="container-fluid" > 
        <div id="calamitysample" class="carousel slide" data-ride="carousel">
           <ol class="carousel-indicators">
             <li data-target="#calamitysample" data-slide-to="0" class="active"></li>
             <li data-target="#calamitysample" data-slide-to="1"></li>
             <li data-target="#calamitysample" data-slide-to="2"></li>
             <li data-target="#calamitysample" data-slide-to="3"></li>
           </ol>
        <div class="carousel-inner" >
           <div class="carousel-item active">
              <img class="d-block w-50" src="img/calwatch1.png" alt="First slide">
           </div>
           <div class="carousel-item">
              <img class="d-block w-50" src="img/calwatch2.png" alt="Second slide">
           </div>
           <div class="carousel-item">
              <img class="d-block w-50" src="img/calwatch3.png" alt="Third slide">
           </div>
        </div>
         <a class="carousel-control-prev" href="#calamitysample" role="button" data-slide="prev">
           <span class="carousel-control-prev-icon" aria-hidden="true"></span>
           <span class="sr-only">Previous</span>
         </a>
         <a class="carousel-control-next" href="#calamitysample" role="button" data-slide="next">
           <span class="carousel-control-next-icon" aria-hidden="true"></span>
           <span class="sr-only">Next</span>
         </a>
        </div>
        <div> <h2 style="text-align: center; color:#b30000 "><strong>CALAMITY WATCH and HOTZONES</strong> </h2></div>
      </div>
    </section>
   
  </div>
  


</div>
</body>