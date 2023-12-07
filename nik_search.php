<?php
session_start();

// KONEKSI KE DATABASE
require "db.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/bekasi1.png">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="wizard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="/js/bootstrap.js"></script>
    <title>Pendataan Anak Kab. Bekasi</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <style>
        body {
            background-color: #f4f4f4;
            /* background-color: black; */
        }

        /* FOR BUTTON ADD */
        .bg-header {
            background-image: url("img/background2.jpg.png");
            background-position: center;
            background-repeat: no-repeat;
        }

        #text-jumbotron {
            font-size: 20px;
            color: white;
            padding-top: 160px;
        }

        #text-jumbotron2 {
            font-size: 18px;
            color: white;
            padding-top: 20px;
        }
    </style>
</head>

<body class="bg-header">
    <div class="header1" style="position: absolute; width: 100%; top: 10%; left: 50%; transform: translate(-50%, -50%)">
        <div class="container-lg-fluid">
            <div class="d-flex justify-content-center">
                <div style="margin-top: -3%" class="col-9">
                    <h2 align="center" id="text-jumbotron"><i class="fas fa-search"></i>&nbsp; Pencarian NIK</h2>
                    <p class="text-white text-center">NIK Anak Anda : <b><?= $_SESSION["nik_anak"] ?></b></p>
                    <?php
                    $nik = $_SESSION["nik_anak"];

                    $sql = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE nik_anak = '$nik'");
                    $gb  = mysqli_fetch_array($sql);
                    $cek = mysqli_num_rows($sql);

                    if ($cek == 0)
                    {
                        echo '<script>alert("MAAF, NIK ANAK ANDA TIDAK DITEMUKAN !"); window.location = "' . $home . '";</script>';
                    }
                    
                    else
                    {
                    ?>
                    <div class="input-group mb-3" style="height: 60px;">
                        <h5 class="fw-bold text-center text-light">A. DATA ANAK</h5>
                        <table class="table table-striped-columns table-hover text-white">
                            
                            <tr align="center">
                                <th style="width: 50%;">NAMA&nbsp;LENGKAP</th>
                                <td class="text-white"><?= $gb["nama_anak"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">USIA</th>
                                <td class="text-white"><?= $gb["usia"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">JENIS KELAMIN</th>
                                <td class="text-white"><?= strtoupper($gb["gender"]) ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">TEMPAT / TANGGAL LAHIR</th>
                                <td class="text-white"><?= $gb["tempat_lahir"] . ", " . date("d-m-Y", strtotime($gb["tgl_lahir"])) ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">STATUS SEKOLAH</th>
                                <td class="text-white"><?= strtoupper($gb["status"]) ?></td>
                            </tr>

                            <?php if($gb["status"] == "sekolah"){ ?>

                            <tr align="center">
                                <th style="width: 50%;">NAMA SEKOLAH</th>
                                <td class="text-white"><?= strtoupper($gb["nama_sekolah"]) ?></td>
                            </tr>

                            <?php } elseif($gb["status"] == "tidak sekolah"){ ?>
                            
                            <tr align="center">
                                <th style="width: 50%;">ALASAN TIDAK BERSEKOLAH</th>
                                <td class="text-white"><?= $gb["alasan"] ?></td>
                            </tr>

                            <?php } ?>
                        
                        </table>
                        <h5 class="fw-bold text-center text-light">B. DATA ORANGTUA</h5>
                        <table class="table table-striped-columns table-hover text-white">

                            <tr align="center">
                                <th style="width: 50%;">NAMA AYAH</th>
                                <td class="text-white"><?= $gb["nama_ayah"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">NAMA IBU</th>
                                <td class="text-white"><?= $gb["nama_ibu"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">E-MAIL</th>
                                <td class="text-white"><?= $gb["email"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">NOMOR TELEPON</th>
                                <td class="text-white"><?= $gb["telp"] ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">KELURAHAN</th>
                                <td class="text-white"><?= strtoupper($gb["kelurahan"]) ?></td>
                            </tr>

                            <tr align="center">
                                <th style="width: 50%;">ALAMAT</th>
                                <td class="text-white"><?= $gb["alamat"] ?></td>
                            </tr>

                        </table>
                        <br><br>
                        <div class="mx-auto pb-5">
                            <a href="<?= $home ?>" class="btn btn-warning fw-bold">KEMBALI</a>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>