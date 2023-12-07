<?php
session_start();
require "db.php";

if (!$_SESSION["admin"]){
    header("Location: login.php");
}

$id    = mysqli_real_escape_string($kon, isset($_GET["id"]) ? $_GET["id"] : "");
$aksi  = isset($_GET["aksi"]) ? $_GET["aksi"] : "";
$error = "";

// PROSEDUR UPDATE DATA
if (isset($_POST["update"]))
{

    $user = mysqli_real_escape_string($kon, $_POST["user"]);
    $pwd  = mysqli_real_escape_string($kon, md5($_POST["pwd"]));
    $pewe = mysqli_real_escape_string($kon, $_POST["pwd"]);
    $nama = mysqli_real_escape_string($kon, $_POST["nama"]);

    // UPDATE DATA KE DATABASE
    mysqli_query($kon, "UPDATE tb_admin SET user = '$user', pwd = '$pwd', pewe = '$pewe', nama = '$nama' WHERE id = '" . $id . "'");

    $msg = '<div align="center" class="alert alert-success" role="alert">
              <i class="fas fa-check"></i>&nbsp; <b>DATA BERHASIL DI-UPDATE !</b>
              
              <br>

              <a href="admin.php" class="btn btn-info"><i class="fas fa-search"></i>&nbsp; CEK DATA</a>
            </div>';

    $error = true;

}

$menu = "administrator";
$page = "admin";

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administrator</title>

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

<body onload="getLocation()" id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php require "partials/sidebar.php"; ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <?php require "partials/topbar.php"; ?>

                <!-- VIEW DATA ADMIN -->

                <?php if($aksi == "view"){ ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-search"></i>&nbsp; DETAIL ADMINISTRATOR</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    
                                    <?php
                                    require "db.php";

                                    $sql = mysqli_query($kon, "SELECT * FROM tb_admin WHERE id = '" . $id . "'");

                                    while ($gb = mysqli_fetch_array($sql))
                                    {
                                    ?>

                                    <tr align="center">
                                        <th><i class="fas fa-user-tie"></i>&nbsp; USERNAME</th>
                                        <td><?= $gb["user"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th><i class="fas fa-lock"></i>&nbsp; PASSWORD</th>
                                        <td><?= $gb["pewe"] ?></td>
                                    </tr>
                                        
                                    <tr align="center">
                                        <th><i class="fas fa-user"></i>&nbsp; NAMA LENGKAP</th>
                                        <td><?= $gb["nama"] ?></td>
                                    </tr>

                                    <?php } ?>

                                </table>

                                <br>

                                <center>
                                    <a href="admin.php" class="btn btn-warning"><i class="fas fa-arrow-left"></i>&nbsp; KEMBALI</a>
                                </center>

                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <?php } elseif($aksi == "edit"){ ?>

                <!-- EDIT DATA ADMIN -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-user-edit"></i>&nbsp; EDIT ADMINISTRATOR</h1>

                    <hr>

                    <?php
                    $sql = mysqli_query($kon, "SELECT * FROM tb_admin WHERE id = '" . $id . "'");

                    while ($gb = mysqli_fetch_array($sql))
                    {

                        if($error){
                            echo '<p>' . $msg . '</p>';
                        }
                        ?>

                    <!-- SKTM FORM -->
                    <form class="myForm" method="post">
                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label"><i class="fas fa-user"></i>&nbsp; USERNAME</label>
                        <div class="col-sm-10">
                          <input name="user" type="text" class="form-control" value="<?= $gb["user"] ?>" placeholder="MASUKKAN USERNAME" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label"><i class="fas fa-lock"></i>&nbsp; PASSWORD</label>
                        <div class="col-sm-10">
                          <input name="pwd" type="password" class="form-control" placeholder="MASUKKAN PASSWORD BARU" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label"><i class="fas fa-user"></i>&nbsp; NAMA LENGKAP</label>
                        <div class="col-sm-10">
                          <input name="nama" type="text" class="form-control" value="<?= $gb["nama"] ?>" placeholder="MASUKKAN NAMA LENGKAP" required>
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

</body>

</html>