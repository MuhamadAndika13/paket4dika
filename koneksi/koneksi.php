<?php 
$server = "localhost";
$user = "root";
$pass = "";
$database = "kasirdika";

$koneksi = new mysqli ($server, $user, $pass, $database);

if(!$koneksi) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
//else {
//    die("<script>alert('berhasil login.')</script>");
//}
?>