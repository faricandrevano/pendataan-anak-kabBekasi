<?php
session_start();
require "db.php";

if (!$_SESSION["admin"]){
    header("Location: login.php");
}

$page = "dashboard";

?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <style type="text/css">
        .text-success {
            color: red;
        }
    </style>

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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-tachometer-alt"></i>&nbsp; DASHBOARD</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- PENDAFTAR SKTM -->
                        <div class="col-xl-3 col-md-3 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                PENDATAAN ANAK</div>
                                            <?php
                                            $sql_anak = mysqli_query($kon, "SELECT * FROM tb_pendataan");
                                            $jum_anak = mysqli_num_rows($sql_anak);
                                            ?>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($jum_anak, 0, "", ".") ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-3 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                ADMINISTRATOR</div>
                                            <?php
                                            $sql_admin = mysqli_query($kon, "SELECT * FROM tb_admin");
                                            $jum_admin = mysqli_num_rows($sql_admin);
                                            ?>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($jum_admin, 0, "", ".") ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-user-tie fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-3 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                DATA KECAMATAN</div>
                                            <?php
                                            $sql_anak = mysqli_query($kon, "SELECT * FROM tb_KECAMATAN");
                                            $jum_anak = mysqli_num_rows($sql_anak);
                                            ?>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($jum_anak, 0, "", ".") ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-3 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                DATA KELURAHAN</div>
                                            <?php
                                            $sql_anak = mysqli_query($kon, "SELECT * FROM tb_kelurahan");
                                            $jum_anak = mysqli_num_rows($sql_anak);
                                            ?>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($jum_anak, 0, "", ".") ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="" method="POST">

                        <div class="row mb-4">
                            <!-- <label class="col-sm-2 col-form-label">KECAMATAN</label> -->
                            <div class="col-sm-12">
                                <select name="kecamatan" placeholder="role" class="form-control" id='kecamatan_dr' style="height: 40px;">
                                    <option selected disabled>--- SILAHKAN PILIH ---</option>
                                    <?php
                           $dataKec = mysqli_query($kon,'SELECT * FROM tb_kecamatan');
                           //  $arrKec = mysqli_fetch_array($dataKec);
                           
                           foreach ($dataKec as $klrh) :
                            ?>
                            <option value="<?= $klrh['id'] ?>"><?= strtoupper($klrh['nama']) ?></option>
                            <?php endforeach; ?>
                        </select>
                        <br>
                        <button type="submit" class="form-control col-sm-12 bg-primary text-white">Filter</button>

                    </div>
                </div>
            </form>

                    <br>
                    <div class="row">
                        <?php 
                        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                            $selectedKecamatan = $_POST["kecamatan"];
                            ?>
                            <!-- GRAFIK DATA -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header align-items-center justify-content-between">
                                    <?php
                                        $kec = mysqli_query($kon,"SELECT * FROM tb_kecamatan WHERE id = '$selectedKecamatan'"); 
                                        $dataKec =mysqli_fetch_array($kec);
                                    ?>
                                    <h6 align="center" class="m-0 font-weight-bold text-primary">GRAFIK PENDATAAN ANAK <br> (KEC. <?= strtoupper($dataKec['nama']) ?>)</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                      <?php
                                      // MENAMPILKAN JUMLAH DATA ANAK BERSEKOLAH
                                      $data_bersekolah = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE status = 'sekolah' AND id_kecamatan = '". $selectedKecamatan ."'");
                                      $jum_bersekolah  = mysqli_num_rows($data_bersekolah);

                                      // MENAMPILKAN JUMLAH DATA ANAK TIDAK BERSEKOLAH
                                      $data_tidaksekolah = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE status = 'tidak sekolah' AND id_kecamatan='" . $selectedKecamatan . "' ");
                                      $jum_tidaksekolah  = mysqli_num_rows($data_tidaksekolah);
                                      ?>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> BERSEKOLAH <b><?= $jum_bersekolah ?></b>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> TIDAK BERSEKOLAH <b><?= $jum_tidaksekolah ?></b>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php }?>

                        

                        <!-- GRAFIK DATA -->
                        <div class="col-xl-8 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header align-items-center justify-content-between">
                                    <h6 align="center" class="m-0 font-weight-bold text-primary">GRAFIK PENDATAAN SELURUH ANAK</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart1"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                      <?php
                                      // MENAMPILKAN JUMLAH DATA ANAK BERSEKOLAH
                                      $data_bersekolah = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE status = 'sekolah'");
                                      $jum_bersekolah  = mysqli_num_rows($data_bersekolah);

                                      // MENAMPILKAN JUMLAH DATA ANAK TIDAK BERSEKOLAH
                                      $data_tidaksekolah = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE status = 'tidak sekolah'");
                                      $jum_tidaksekolah  = mysqli_num_rows($data_tidaksekolah);
                                      ?>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> BERSEKOLAH <b><?= $jum_bersekolah ?></b>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> TIDAK BERSEKOLAH <b><?= $jum_tidaksekolah ?></b>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

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
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <!-- <script src="js/demo/chart-bar-demo.js"></script> -->
    <!-- <script src="js/demo/chart-pie-demo.js"></script> -->

    <!-- JS PENDATAAN ANAK (KEC. SUKATANI) -->
    <script type="text/javascript">

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Pie Chart Example
    var ctx = document.getElementById("myPieChart");
    var myPieChart = new Chart(ctx, {
      type: 'doughnut',
      data: {
        labels: ["BERSEKOLAH", "TIDAK BERSEKOLAH"],
        datasets: [{
          data: [<?= $jum_bersekolah ?>, <?= $jum_tidaksekolah ?>],
          backgroundColor: ['green', 'red'],
          hoverBackgroundColor: ['green', 'red'],
          hoverBorderColor: "rgba(234, 236, 244, 1)",
        }],
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          backgroundColor: "rgb(255,255,255)",
          bodyFontColor: "#858796",
          borderColor: '#dddfeb',
          borderWidth: 1,
          xPadding: 15,
          yPadding: 15,
          displayColors: false,
          caretPadding: 10,
        },
        legend: {
          display: false
        },
        cutoutPercentage: 80,
      },
    });


    var ctx1 = document.getElementById("myPieChart1");
    var myPieChart = new Chart(ctx1, {
      type: 'doughnut',
      data: {
        labels: ["BERSEKOLAH", "TIDAK BERSEKOLAH"],
        datasets: [{
          data: [<?= $jum_bersekolah ?>, <?= $jum_tidaksekolah ?>],
          backgroundColor: ['green', 'red'],
          hoverBackgroundColor: ['green', 'red'],
          hoverBorderColor: "rgba(234, 236, 244, 1)",
        }],
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          backgroundColor: "rgb(255,255,255)",
          bodyFontColor: "#858796",
          borderColor: '#dddfeb',
          borderWidth: 1,
          xPadding: 15,
          yPadding: 15,
          displayColors: false,
          caretPadding: 10,
        },
        legend: {
          display: false
        },
        cutoutPercentage: 80,
      },
    });

    </script>

</body>

</html>