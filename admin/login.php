<?php
session_start();
require "db.php";

$error = "";

if (isset($_POST["login"])){

    // PROSEDUR LOGIN
    $user = mysqli_real_escape_string($kon, $_POST["user"]);
    $pwd  = mysqli_real_escape_string($kon, $_POST["pwd"]);

    // CEK & VALIDASI ADMIN
    $kue = mysqli_query($kon, "SELECT * FROM tb_admin WHERE user = '$user' AND pwd = '" . md5($pwd) . "'");
    $cek = mysqli_fetch_array($kue);

    if (!($cek)){
        // echo 'Password: ' . md5($pwd);
        $msg = '<div align="center" class="alert alert-danger" role="alert">
                    <i class="fas fa-ban"></i>&nbsp; <b>MAAF, USERNAME / PASSWORD ANDA SALAH. SILAHKAN ULANGI LAGI !</b>
                </div>';
    } else {

        $_SESSION["admin"] = $cek["nama"];
        header("Location: index.php");

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

    <title>Login Administrator</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <style type="text/css">
        body {
            background-image: url(img/bg-banner_1.png);
            background-size: 100% 100%;
            background-attachment: fixed;
        }
    </style>

</head>

<body class="bg-gradient">

    <div style="margin-top: 3%" class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"><img width="50" src="img/sktm.png"> <b>BekasiKab</b></h1>
                                        <p><i class="fas fa-sign-in-alt"></i>&nbsp; LOGIN ADMINISTRATOR</p>
                                        <?php
                                        if ($error){
                                            echo '<p>' . $msg . '</p>';
                                        }
                                        ?>
                                    </div>
                                    <form class="user" method="post">
                                        <div class="form-group">
                                            <input name="user" type="text" class="form-control form-control-user" placeholder="Username" required>
                                        </div>
                                        <div class="form-group">
                                            <input name="pwd" type="password" class="form-control form-control-user" placeholder="Password" required>
                                        </div>
                                        <button type="submit" name="login" class="btn btn-primary btn-user btn-block">
                                            <i class="fas fa-sign-in-alt"></i>&nbsp; Login
                                        </button>
                                    </form>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>