<?php
session_start();
include "../koneksi/koneksi.php";

$user = $_SESSION['NamaUser'];
if ($_SESSION['NamaUser']=="") {
    header("Location: login.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Petugas</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/bootstrap.min.css">
    <script src="../bootstrap-5.3.2-dist/jquery.min.js"></script>
    <script src="../bootstrap-5.3.2-dist/bootstrap.min.js"></script>
    <style>
        
        .row.content {height: 640px}
        
        
        .sidenav {
            background-color: Wheat;
            height: 100%;
        }
            
        
        @media screen and (max-width: 767px) {
        .row.content {height: auto;} 
        }
    </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2 ><?php echo $_SESSION['level']; ?></h2>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="index.php">Dashboard</a></li>
        <li><a href="?page=stok-brg">Stok</a></li>
        <li><a href="?page=user">User</a></li>
        <li><a href="logout.php">Log Out</a></li>
      </ul><br>
    </div>
    <br>

    <div class="col-sm-9">
      <?php 
      if (isset($_GET['page'])) {
        $laman = $_GET['page'];

        switch ($laman) {
          case 'user';
          include "user.php";
          break;

          case 'stok-brg';
          include "stok-brg.php";
          break;
          
          case 'logout';
          include "logout.php";
          break;

          case 'tambah-barang';
          include "tambah-barang.php";
          break;

          case 'cari-menu';
          include "cari-menu.php";
          break;

          case 'tambah-user':
            include "tambah-user.php";
            break;

          case 'hapus-user':
             include "hapus-user.php";
             break;

          case 'edit-user':
             include "edit-user.php";
             break;

          case 'hapus-brg':
             include "hapus-brg.php";
             break;

          case 'edit-brg':
             include "edit-brg.php";
             break;
          default:
         
          break;
        }
      }
      else {
        include "dashboard.php";
      }
      ?>
     </div>
  </div>
</div>

</body>
</html>
