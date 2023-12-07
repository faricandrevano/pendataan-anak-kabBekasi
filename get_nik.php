<?php
session_start();
require "db.php";

$nik_anak = mysqli_real_escape_string($kon, $_POST["nik_anak"]);

$_SESSION["nik_anak"] = $nik_anak;

echo '<script>location.href = "nik_search.php";</script>';
?>