<?php
session_start();
require "db.php";

if (!$_SESSION["admin"]){
    header("Location: login.php");
}

$menu = "pendataan-sekolah";
$page = "pendataan-sekolah";

$id    = mysqli_real_escape_string($kon, isset($_GET["id"]) ? $_GET["id"] : "");
$aksi  = isset($_GET["aksi"]) ? $_GET["aksi"] : "";
$error = "";

// SEMBUNYIKAN ERROR
error_reporting(0);

// PROSEDUR UPDATE DATA
if (isset($_POST["update"]))
{

    // IDENTITAS ANAK
    $nama  = mysqli_real_escape_string($kon, $_POST["nama"]);


    // VALIDASI INPUT FOTO KK

        // UPDATE DATA KE DATABASE
        mysqli_query($kon, "UPDATE tb_sekolah SET nama = '$nama' WHERE id = '" . $id . "'");

        $msg = '<div align="center" class="alert alert-success" role="alert">
                  <i class="fas fa-check"></i>&nbsp; <b>DATA BERHASIL DI-UPDATE !</b>
                  
                  <br>

                  <a href="add_sekolah.php" class="btn btn-info"><i class="fas fa-search"></i>&nbsp; CEK DATA</a>
                </div>';

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

    <title>SEKOLAH KAB BEKASI</title>

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

                <!-- VIEW DATA PENDAFTAR SKTM -->

                <?php if($aksi == "view"){ ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-search"></i>&nbsp; DETAIL PENDATAAN ANAK</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">
                                <strong>IDENTITAS ANAK</strong>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    
                                    <?php
                                    require "db.php";

                                    $sql_anak = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE id = '" . $id . "'");

                                    while ($gb = mysqli_fetch_array($sql_anak))
                                    {
                                    ?>

                                    <tr align="center">
                                        <th>NIK</th>
                                        <td><?= $gb["nik_anak"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>NAMA LENGKAP</th>
                                        <td><?= $gb["nama_anak"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>USIA</th>
                                        <td><?= $gb["usia"] ?></td>
                                    </tr>
                                        
                                    <tr align="center">
                                        <th>JENIS KELAMIN</th>
                                        <td><?= $gb["gender"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>TEMPAT / TGL. LAHIR</th>
                                        <td><?= $gb["tempat_lahir"] . ", " . $gb["tgl_lahir"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>STATUS SEKOLAH</th>
                                        <td><?= strtoupper($gb["status"]) ?></td>
                                    </tr>

                                    <?php if($gb["status"] == "sekolah"){ ?>

                                    <tr align="center">
                                        <th>NAMA SEKOLAH</th>
                                        <td><?= strtoupper($gb["sekolah"]) ?></td>
                                    </tr>

                                    <?php } else { ?>

                                    

                                    <?php
                                    }

                                    }

                                    ?>

                                </table>

                                <br><br>

                                <br>

                                <center>
                                    <a href="pendataan_anak.php" class="btn btn-warning"><i class="fas fa-arrow-left"></i>&nbsp; KEMBALI</a>
                                </center>

                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <?php } elseif($aksi == "edit"){ ?>

                <!-- EDIT DATA PENDAFTAR SKTM -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-user-edit"></i>&nbsp; EDIT SEKOLAH</h1>

                    <hr>

                    <?php
                    $sql = mysqli_query($kon, "SELECT * FROM tb_sekolah WHERE id = '" . $id . "'");

                    while ($gb = mysqli_fetch_array($sql))
                    {

                        if($error){
                            echo '<p>' . $msg . '</p>';
                        }
                        ?>

                    <!-- SKTM FORM -->
                    <form class="myForm" method="post" enctype="multipart/form-data">
                      <div class="row mb-3">
                          <strong style="margin-left: 13px">SEKOLAH</strong>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NAMA SEKOLAH</label>
                        <div class="col-sm-10">
                          <input name="nama" type="text" class="form-control" value="<?= $gb["nama"] ?>" placeholder="MASUKKAN NIK ANAK" required>
                        </div>
                      </div>

                      <?php } ?>

                    <button style="margin-left: 17%" name="update" type="submit" class="btn btn-success mb-4"><i class="fas fa-user-edit"></i>&nbsp; UPDATE</button> &nbsp;&nbsp; <button type="reset" class="btn btn-danger mb-4"><i class="fas fa-times"></i>&nbsp; BATAL</button>
                    </form>

                </div>
                <!-- /.container-fluid -->

                <?php } ?>

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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

    <!-- JS -->
    <script type="text/javascript">
        $(document).ready(function(){

            $("#ya").click(function(){

                var status = $(this).val();

                $.ajax({
                    url: "sekolah.php",
                    method: "POST",
                    data: "status_sekolah=" + status,
                    success: function(data){
                        $("#show").html(data);
                    }
                })

            });

            $("#tidak").click(function(){

                var status = $(this).val();

                $.ajax({
                    url: "../tidak_sekolah.php",
                    method: "POST",
                    data: "status_sekolah=" + status,
                    success: function(data){
                        $("#show").html(data);
                    }
                });

            });

        });
    </script>

</body>

</html>