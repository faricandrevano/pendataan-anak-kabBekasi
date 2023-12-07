<?php
session_start();

if (!$_SESSION["admin"]){
    header("Location: login.php");
}

$aksi = isset($_GET["aksi"]) ? $_GET["aksi"] : "";

if ($aksi == "del")
{
    require "db.php";

    $id = mysqli_real_escape_string($kon, isset($_GET["id"]) ? $_GET["id"] : "");

    mysqli_query($kon, "DELETE FROM tb_kecamatan WHERE id = '" . $id . "'");
    echo('<script>alert("DATA BERHASIL DIHAPUS !"); window.location = "add_kecamatan.php";</script>');
}

$menu = "pendataan-wilayah";
$page = "add-pendataan-kecamatan";

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LIST KECAMATAN</title>

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
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-users"></i>&nbsp; KECAMATAN KABUPATEN BEKASI</h1>
                    <a href="add_kecamatan_post.php" class="btn btn-success"><i class="fas fa-user-plus"></i>&nbsp; DAFTAR BARU</a>

                    <br><br>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr align="center">
                                            <th>ID</th>
                                            <th>NAMA KECAMATAN</th>
                                            <th width="20%">AKSI</th>
                                        </tr>
                                    </thead>

                                    <tbody>

                                        <?php
                                        require "db.php";

                                        $sql = mysqli_query($kon, "SELECT * FROM tb_kecamatan");

                                        while ($gb = mysqli_fetch_array($sql))
                                        {
                                        ?>

                                        <tr align="center">
                                            <td><?= $gb["id"] ?></td>
                                            <td><?php if(strlen($gb["nama"]) >= 20){ echo substr($gb["nama"], 0, 20) . "..."; } else { echo $gb["nama"]; } ?></td>
                                            <td width="20%"><a class="btn btn-warning" href="kecamatan_next.php?aksi=edit&id=<?= $gb["id"] ?>"><i class="fas fa-edit"></i></a> &nbsp; <a onClick="return confirm('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?')" class="btn btn-danger" href="add_kecamatan.php?aksi=del&id=<?= $gb["id"] ?>"><i class="fas fa-trash"></i></a></td>
                                        </tr>

                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>