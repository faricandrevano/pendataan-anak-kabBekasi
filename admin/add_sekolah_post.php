<?php
session_start();
require "db.php";

if (!$_SESSION["admin"]){
    header("Location: login.php");
}
$menu = "pendataan-sekolah";
$page = "add-pendataan-sekolah";

$error = "";

// SEMBUNYIKAN ERROR
error_reporting(0);

// PROSEDUR SIMPAN DATA
if (isset($_POST["add"])){

    // KECMAATAN
    $nama = mysqli_real_escape_string($kon, $_POST["nama"]);
    $kue = mysqli_query($kon, "SELECT * FROM tb_sekolah WHERE nama = '$nama'");
        $cek = mysqli_fetch_array($kue);

        if ($cek > 0){
            $msg = '<div align="center" class="alert alert-warning" role="alert">
                      <i class="fas fa-exclamation-triangle"></i>&nbsp; <b>MAAF,SEKOLAH TERSEBUT TELAH ADA. SILAHKAN ISI NAMA SEKOLAH YANG LAIN !</b>
                    </div>';
        } else {

            // UPLOAD FOTO KK KE FOLDER
            // copy ($_FILES["foto_kk"]["tmp_name"], "../uploads/" . $_FILES["foto_kk"]["name"]);

            // INSERT DATA KE DATABASE
            mysqli_query($kon, "INSERT INTO tb_sekolah (nama) VALUES ('$nama')");

            $msg = '<div align="center" class="alert alert-success" role="alert">
                      <i class="fas fa-check"></i>&nbsp; <b>DATA BERHASIL DISIMPAN !</b>
                      
                      <br>

                      <a href="add_sekolah.php" class="btn btn-info"><i class="fas fa-search"></i>&nbsp; CEK DATA</a>
                    </div>';

        }
        $error = true;
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tambah Kecamatan</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php require "partials/sidebar.php"; ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <?php require "partials/topbar.php"; ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-user-plus"></i>&nbsp; DAFTAR SEKOLAH KABUPATEN BEKASI</h1>

                    <hr>

                    <?php
                    if($error){
                        echo '<p>' . $msg . '</p>';
                    }
                    ?>

                    <!-- SKTM FORM -->
                    <form class="myForm" method="post" enctype="multipart/form-data">

                      <div class="row mb-3">
                         <strong>&nbsp; SEKOLAH</strong>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NAMA</label>
                        <div class="col-sm-10">
                          <input name="nama" type="text" class="form-control" placeholder="MASUKAN NAMA SEKOLAH" required>
                        </div>
                      </div>


                    <button style="margin-left: 17%" name="add" type="submit" class="btn btn-success mb-4"><i class="fas fa-user-plus"></i>&nbsp; SIMPAN</button> &nbsp;&nbsp; <button type="reset" class="btn btn-danger mb-4"><i class="fas fa-times"></i>&nbsp; BATAL</button>
                    </form>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- JS -->
    <script type="text/javascript">
        $(document).ready(function(){

            $("#ya").click(function(){

                $.ajax({
                    url: "sekolah.php",
                    method: "POST",
                    success: function(e){
                        $("#show").html(e);
                    }
                })

            });

            $("#tidak").click(function(){

                $.ajax({
                    url: "../tidak_sekolah.php",
                    method: "POST",
                    success: function(e){
                        $("#show").html(e);
                    }
                });

            });

        });



        $(document).ready(function () {
          $("#kecamatan_dr").on("change", function () {
                var selectedKecamatan = $(this).val();

                $.ajax({
                    type: "POST",
                    url: "get_kelurahan.php", // Buat file get_kelurahan.php untuk mengambil data kelurahan berdasarkan kecamatan
                    data: { kecamatan: selectedKecamatan },
                    success: function (data) {
                        $("#kelurahan_dr").html(data);
                        $("#kelurahan_dr").prop("disabled", false);
                    }
                });
            });
        });
    </script>

</body>

</html>