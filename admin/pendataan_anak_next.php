<?php
session_start();
require "db.php";

if (!$_SESSION["admin"]){
    header("Location: login.php");
}

$menu = "pendataan-anak";
$page = "pendataan-anak";

$id    = mysqli_real_escape_string($kon, isset($_GET["id"]) ? $_GET["id"] : "");
$aksi  = isset($_GET["aksi"]) ? $_GET["aksi"] : "";
$error = "";

// SEMBUNYIKAN ERROR
error_reporting(0);

// PROSEDUR UPDATE DATA
if (isset($_POST["update"]))
{

    // IDENTITAS ANAK
    $nik_anak  = mysqli_real_escape_string($kon, $_POST["nik_anak"]);
    $nama_anak = mysqli_real_escape_string($kon, $_POST["nama_anak"]);
    $usia      = mysqli_real_escape_string($kon, $_POST["usia"]);
    $jk        = mysqli_real_escape_string($kon, $_POST["jk"]);
    $tempat    = mysqli_real_escape_string($kon, $_POST["tempat_lahir"]);
    $tgl_lhr   = mysqli_real_escape_string($kon, $_POST["tgl_lahir"]);
    $status    = mysqli_real_escape_string($kon, $_POST["status"]);
    // *** KONDISI STATUS ANAK (BERSEKOLAH / TIDAK BERSEKOLAH) ***
    $sekolah   = mysqli_real_escape_string($kon, $_POST["sekolah"]); // --> ANAK BERSEKOLAH
    $alasan    = mysqli_real_escape_string($kon, $_POST["alasan"]);  // --> ANAK TIDAK BERSEKOLAH

    // DATA ORANGTUA ANAK
    $nama_ayah = mysqli_real_escape_string($kon, $_POST["nama_ayah"]);
    $nama_ibu  = mysqli_real_escape_string($kon, $_POST["nama_ibu"]);
    $email     = mysqli_real_escape_string($kon, $_POST["email"]);
    $telp      = mysqli_real_escape_string($kon, $_POST["telp"]);
    $kelurahan = mysqli_real_escape_string($kon, $_POST["kelurahan"]);
    $kecamatan = mysqli_real_escape_string($kon, $_POST["kecamatan"]);
    $alamat    = mysqli_real_escape_string($kon, $_POST["alamat"]);

    // *** VALIDASI FOTO KK (Ekstensi: jpg, jpeg, png) ***
    $foto_kk       = $_FILES["foto_kk"]["name"];
    $ekstensi_file = array("jpg", "jpeg", "png");
    $ekstensi      = strtolower(end(explode('.', $foto_kk)));
    $ekstensi_ok   = in_array($ekstensi, $ekstensi_file);

    // VALIDASI INPUT FOTO KK
    if (!($ekstensi_ok)){
        echo '<script>alert("EKSTENSI FOTO KK HARUS JPG, JPEG & PNG !"); window.location = "";</script>';
    } else {

        // COPY FOTO KK KE FOLDER UPLOADS
        copy ($_FILES["foto_kk"]["tmp_name"], "../uploads/" . $_FILES["foto_kk"]["name"]);

        // UPDATE DATA KE DATABASE
        mysqli_query($kon, "UPDATE tb_pendataan SET nik_anak = '$nik_anak', nama_anak = '$nama_anak', usia = '$usia', gender = '$jk', tempat_lahir = '$tempat', tgl_lahir = '$tgl_lhr', status = '$status', nama_sekolah = '$sekolah', alasan = '$alasan', nama_ayah = '$nama_ayah', nama_ibu = '$nama_ibu', email = '$email', telp = '$telp', kelurahan = '$kelurahan',id_kecamatan='$kecamatan', alamat = '$alamat', foto_kk = '$foto_kk' WHERE id = '" . $id . "'");

        $msg = '<div align="center" class="alert alert-success" role="alert">
                  <i class="fas fa-check"></i>&nbsp; <b>DATA BERHASIL DI-UPDATE !</b>
                  
                  <br>

                  <a href="pendataan_anak.php" class="btn btn-info"><i class="fas fa-search"></i>&nbsp; CEK DATA</a>
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

    <title>Pendataan Anak</title>

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
                                        <td><?= strtoupper($gb["nama_sekolah"]) ?></td>
                                    </tr>

                                    <?php } else { ?>

                                    <tr align="center">
                                        <th>ALASAN TIDAK BERSEKOLAH</th>
                                        <td><?= strtoupper($gb["alasan"]) ?></td>
                                    </tr>

                                    <?php
                                    }

                                    }

                                    ?>

                                </table>

                                <br><br>

                                <strong>DATA ORANGTUA</strong>

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                                    <?php
                                    $sql_orangtua = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE id = '" . $id . "'");

                                    while ($row = mysqli_fetch_array($sql_orangtua))
                                    {
                                    ?>

                                    <tr align="center">
                                        <th width="56%">NAMA AYAH</th>
                                        <td><?= strtoupper($row["nama_ayah"]) ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>NAMA IBU</th>
                                        <td><?= strtoupper($row["nama_ibu"]) ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>E-MAIL</th>
                                        <td><?= $row["email"] ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>NO. TELEPON</th>
                                        <td><?= $row["telp"] ?></td>
                                    </tr>

                                    
                                    <tr align="center">
                                        <th>KELURAHAN</th>
                                        <td><?= strtoupper($row["kelurahan"]) ?></td>
                                    </tr>

                                    <tr align="center">
                                        <th>ALAMAT</th>
                                        <td><?= $row["alamat"] ?></td>
                                    </tr>

                                    <?php } ?>

                                </table>

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
                    <h1 class="h3 mb-2 text-gray-800"><i class="fas fa-user-edit"></i>&nbsp; EDIT PENDATAAN ANAK</h1>

                    <hr>

                    <?php
                    $sql = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE id = '" . $id . "'");

                    while ($gb = mysqli_fetch_array($sql))
                    {

                        if($error){
                            echo '<p>' . $msg . '</p>';
                        }
                        ?>

                    <!-- SKTM FORM -->
                    <form class="myForm" method="post" enctype="multipart/form-data">
                      <div class="row mb-3">
                          <strong style="margin-left: 13px">IDENTITAS ANAK</strong>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NIK</label>
                        <div class="col-sm-10">
                          <input name="nik_anak" type="number" class="form-control" value="<?= $gb["nik_anak"] ?>" placeholder="MASUKKAN NIK ANAK" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NAMA LENGKAP</label>
                        <div class="col-sm-10">
                          <input name="nama_anak" type="text" class="form-control" value="<?= $gb["nama_anak"] ?>" placeholder="MASUKKAN NAMA ANAK LENGKAP" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">USIA</label>
                        <div class="col-sm-10">
                          <select name="usia" class="form-control" required>
                              <option disabled>--- SILAHKAN PILIH ---</option>
                              <?php
                              $usia = array(5, 6);

                              foreach ($usia as $umur) :
                              ?>
                              <option <?php if($gb["usia"] == $umur){ echo "selected"; } ?> value="<?= $umur ?>"><?= $umur ?> tahun</option>
                              <?php endforeach; ?>
                          </select>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">JENIS KELAMIN</label>
                        <div class="col-sm-10">
                            <input style="margin-top: 11px" type="radio" name="jk" value="laki-laki" required> <label>LAKI-LAKI</label> &nbsp; <input type="radio" name="jk" value="perempuan"> <label>PEREMPUAN</label>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">TEMPAT LAHIR</label>
                        <div class="col-sm-10">
                            <input name="tempat_lahir" type="text" class="form-control" placeholder="MASUKKAN TEMPAT LAHIR ANAK" value="<?= $gb["tempat_lahir"] ?>" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">TANGGAL LAHIR</label>
                        <div class="col-sm-10">
                            <input name="tgl_lahir" type="date" class="form-control" value="<?= date("Y-m-d", strtotime($gb["tgl_lahir"])) ?>" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">STATUS SEKOLAH</label>
                        <div class="col-sm-10">
                            <input style="margin-top: 11px" type="radio" name="status" id="ya" value="sekolah" required> <label>SEKOLAH</label> &nbsp; <input type="radio" name="status" id="tidak" value="tidak sekolah"> <label>TIDAK SEKOLAH</label>
                            <span id="show"></span>
                        </div>
                      </div>

                      <hr>

                      <strong>DATA ORANGTUA</strong>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NAMA AYAH</label>
                        <div class="col-sm-10">
                          <input name="nama_ayah" type="text" class="form-control" value="<?= $gb["nama_ayah"] ?>" placeholder="MASUKKAN NAMA AYAH LENGKAP" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NAMA IBU</label>
                        <div class="col-sm-10">
                          <input name="nama_ibu" type="text" class="form-control" value="<?= $gb["nama_ibu"] ?>" placeholder="MASUKKAN NAMA IBU LENGKAP" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">E-MAIL (AYAH / IBU)</label>
                        <div class="col-sm-10">
                          <input name="email" type="email" class="form-control" value="<?= $gb["email"] ?>" placeholder="MASUKKAN E-MAIL (AYAH / IBU)" required>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">NO. TELP (AYAH/IBU)</label>
                        <div class="col-sm-10">
                          <input name="telp" type="number" class="form-control" value="<?= $gb["telp"] ?>" placeholder="MASUKKAN NO. TELP (AYAH / IBU)" required>
                        </div>
                      </div>
                      
                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">KECAMATAN</label>
                        <div class="col-sm-10">
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
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">KELURAHAN</label>
                        <div class="col-sm-10">
                          <select name="kelurahan" placeholder="role" class="form-control" id='kelurahan_dr' style="height: 40px;">
                            <option selected disabled>--- SILAHKAN PILIH ---</option>
                            
                        </select>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">ALAMAT</label>
                        <div class="col-sm-10">
                          <textarea name="alamat" rows="6" class="form-control" placeholder="MASUKKAN ALAMAT" required><?= $gb["alamat"] ?></textarea>
                        </div>
                      </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">FOTO KK</label>
                        <div class="col-sm-10">
                          <input name="foto_kk" type="file" class="form-control" required>
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