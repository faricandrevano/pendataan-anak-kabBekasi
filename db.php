<?php
// KONEKSI KE DATABASE
$host = "localhost";
$user = "root";
$pwd  = "";
$db   = "pendataan";

$kon  = mysqli_connect($host, $user, $pwd, $db) or die("MAAF TIDAK BISA CONNECT KE DATABASE !");

// KONFIGURASI SISTEM
$home = "http://localhost/pendataan/";
?>