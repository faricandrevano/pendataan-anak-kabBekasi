<?php
// data dari step 1
$nama_awal = $_POST['nama_awal'];
$nama_akhir = $_POST['nama_akhir'];
$tentang_kamu = $_POST['tentang_kamu'];

// data dari step 2
$tempat_lahir = $_POST['tempat_lahir'];
$alamat_rumah = $_POST['alamat_rumah'];
$alamat_kantor = $_POST['alamat_kantor'];


echo "<b>Identitas Pribadi</b><br>Nama Awal: ".$nama_awal."<br>Nama AKhir: ".$nama_akhir."<br>Tetang Kamu: ".$tentang_kamu."<br><br>";
echo "<b>Alamat Lengkap</b><br>Tempat Lahir: ".$tempat_lahir."<br>Alamat Rumah: ".$alamat_rumah."<br>Alamat Kantor: ".$alamat_kantor."<br><br>";