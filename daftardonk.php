<?php
// SEMBUNYIKAN ERROR
//error_reporting(0);

// KONEKSI KE DATABASE
require "db.php";

// JIKA TOMBOL SIMPAN DI-KLIK :
if (isset($_POST["simpan"])){
    // PROSEDUR SIMPAN DATA

    // WIZARD 1 (IDENTITAS ANAK) :
    $nik_anak  = mysqli_real_escape_string($kon, $_POST["nik_anak"]);
    $nama_anak = mysqli_real_escape_string($kon, $_POST["nama_anak"]);
    $usia      = mysqli_real_escape_string($kon, $_POST["usia"]);
    $jk        = mysqli_real_escape_string($kon, $_POST["gender"]);
    $tempat    = mysqli_real_escape_string($kon, $_POST["tempat_lahir"]);
    $tgl_lhr   = mysqli_real_escape_string($kon, $_POST["tgl_lahir"]);
    $status    = mysqli_real_escape_string($kon, $_POST["status"]);
    $sekolah   = mysqli_real_escape_string($kon, $_POST["sekolah"]);
    $alasan    = mysqli_real_escape_string($kon, $_POST["alasan"]);

    // WIZARD 2 (DATA ORANGTUA) :
    $nama_ayah = mysqli_real_escape_string($kon, $_POST["nama_ayah"]);
    $nama_ibu  = mysqli_real_escape_string($kon, $_POST["nama_ibu"]);
    $email     = mysqli_real_escape_string($kon, $_POST["email"]);
    $telp      = mysqli_real_escape_string($kon, $_POST["telp"]);
    $kecamatan = mysqli_real_escape_string($kon, $_POST["kecamatan"]);
    $kelurahan = mysqli_real_escape_string($kon, $_POST["kelurahan"]);
    $alamat    = mysqli_real_escape_string($kon, $_POST["alamat"]);
    
    // *** VALIDASI FOTO KK (Ekstensi: jpg, jpeg, png) ***
    $foto_kk       = $_FILES["foto"]["name"];
    $ekstensi_file = array("jpg", "jpeg", "png");
    $ekstensi      = strtolower(end(explode('.', $foto_kk)));
    $ekstensi_ok   = in_array($ekstensi, $ekstensi_file);

    // VALIDASI INPUT FOTO KK
    if (!($ekstensi_ok)){
        echo '<script>alert("EKSTENSI FOTO KK HARUS JPG, JPEG & PNG !"); window.location = "";</script>';
    } else {

        // CEK & VALIDASI DATA
        $sql = mysqli_query($kon, "SELECT * FROM tb_pendataan WHERE nik_anak = '$nik_anak'");
        $cek = mysqli_fetch_array($sql);

        if ($cek > 0)
        {
            echo '<script>alert("MAAF, NIK ANAK TERSEBUT TELAH ADA. SILAHKAN ISI NIK YANG LAIN !"); window.location = "";</script>';
        } else {

            // UPLOAD FOTO KK KE FOLDER
            copy ($_FILES["foto"]["tmp_name"], "uploads/" . $_FILES["foto"]["name"]);

            // INSERT DATA KE DATABASE
            mysqli_query($kon, "INSERT INTO tb_pendataan (nik_anak, nama_anak, usia, gender, tempat_lahir, tgl_lahir, status, nama_sekolah, alasan, nama_ayah, nama_ibu, email, telp, kelurahan,id_kecamatan, alamat, foto_kk) VALUES ('$nik_anak', '$nama_anak', '$usia', '$jk', '$tempat', '$tgl_lhr', '$status', '$sekolah', '$alasan', '$nama_ayah', '$nama_ibu', '$email', '$telp', '$kelurahan','$kecamatan', '$alamat', '$foto_kk')");

            echo '<script>alert("PENDAFTARAN TELAH BERHASIL !"); window.location = "' . $home . 'sukses.php";</script>';

        }

    }

}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pendaftaran</title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <link rel="stylesheet" href="wizard.css">
    <link rel="shortcut icon" href="img/bekasi 1.png">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>

<body style="text-align: center;">
    <div class="container py-4">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <form method="post" class="f1" enctype="multipart/form-data">
                    <h3 style="font-weight: bold;">Pendataan Anak Usia Dini 5&nbsp;-&nbsp;6&nbsp;Tahun</h3>
                    <p class="fw-bold">Silahkan Isi Form Dibawah Ini Dengan Benar</p>

                    <div class="f1-steps">
                        <div class="f1-progress">
                            <div class="f1-progress-line" data-now-value="25" data-number-of-steps="4"
                                style="width: 25%;"></div>
                        </div>
                        <div class="f1-step active">
                            <div class="f1-step-icon"><i class="fa fa-child"></i></div>
                            <p>Data Anak</p>
                        </div>
                        <div class="f1-step">
                            <div class="f1-step-icon"><i class="bi bi-people-fill"></i></div>
                            <p>Data Orangtua</p>
                        </div>
                    </div>
                    <div class="card p-4 mt-3" style="border-radius: 10px">
                        <!-- step 1 -->
                        <fieldset>
                            <h4>Identitas Anak</h4><hr>
                            <div class="form-group">
                                <label>NIK Anak</label>
                                <input type="number" name="nik_anak" placeholder="NIK Anak" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama Lengkap Anak</label>
                                <input type="text" name="nama_anak" placeholder="Nama Lengkap Anak"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Usia Anak</label>
                                <select name="usia" class="form-control" style="height: 40px;">
                                    <option value="5">5 tahun</option>
                                    <option value="6">6 tahun</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <div class="">
                                    <input type="radio" id="laki-laki" name="gender" value="laki-laki">
                                    <label for="laki-laki">Laki-Laki</label>
                                    &nbsp;&nbsp;
                                    <input type="radio" id="perempuan" name="gender" value="perempuan">
                                    <label for="perempuan">Perempuan</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Tempat Lahir</label>
                                <input type="text" name="tempat_lahir" placeholder="Tempat Lahir" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tanggal Lahir</label>
                                <input type="date" name="tgl_lahir" placeholder="Tanggal Lahir" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Status Sekolah</label>
                                <div class="">
                                    <input type="radio" id="ya" name="status" value="sekolah">
                                    <label>Bersekolah</label>
                                    &nbsp;&nbsp;
                                    <input type="radio" id="tidak" name="status" value="tidak sekolah">
                                    <label>Tidak Bersekolah</label>
                                </div>
                            </div>
                            <span id="show"></span>
                            <div class="f1-buttons d-flex justify-content-between">
                                <a href="<?= $home ?>" class="btn btn-primary text-light"><i class="fa fa-arrow-left" style="margin-right: 6px;"></i>Kembali
                                </a>
                                <button type="button" class="btn btn-primary btn-next">Selanjutnya
                                    <i class="fa fa-arrow-right"></i></button>
                            </div>
                        </fieldset>
                        <!-- step 2 -->
                        <fieldset>
                            <h4>Data Orangtua</h4><hr>
                            <div class="form-group">
                                <label>Nama Ayah</label>
                                <input type="text" name="nama_ayah" placeholder="Nama Ayah" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama Ibu</label>
                                <input type="text" name="nama_ibu" placeholder="Nama Ibu" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>E-mail (Ayah atau Ibu)</label>
                                <input type="email" name="email" placeholder="E-mail (Ayah atau Ibu)"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nomor Telepon (Ayah atau Ibu)</label>
                                <input type="number" name="telp" placeholder="Nomor Telepon (Ayah atau Ibu)"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="kecamatan">KECAMATAN</label><br>
                                <select name="kecamatan" id='kecamatan_dr' placeholder="role" class="form-control" style="height: 40px;">
                                    <option selected disabled>--- SILAHKAN PILIH ---</option>
                                    <?php
                                    $dataKec = mysqli_query($kon,'SELECT * FROM tb_kecamatan');

                                    foreach ($dataKec as $klrh) :
                                    ?>
                                        <option value="<?= $klrh['id'] ?>"><?= strtoupper($klrh['nama']) ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            

                                <div class="form-group">
                                    <label for="kelurahan">KELURAHAN</label>
                                <select name="kelurahan" placeholder="role" class="form-control" id='kelurahan_dr' style="height: 40px;">
                                    <option selected disabled>--- SILAHKAN PILIH ---</option>
                                    
                                </select>
                                </div>

                            <div class="form-group">
                                <label>Alamat</label>
                                <textarea name="alamat" placeholder="Alamat" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Foto Kartu Keluarga</label>
                                <input type="file" name="foto" id="foto" />
                                <!-- <label for="file">
                                    <strong>Choose a file</strong>
                                </label> -->
                            </div>
                            <div class="f1-buttons">
                                <button type="button" class="btn btn-warning btn-previous"><i
                                        class="fa fa-arrow-left"></i>
                                    Sebelumnya</button>
                                <button name="simpan" type="submit" class="btn btn-primary btn-submit"><i class="fa fa-save"></i>
                                    Submit</button>
                            </div>
                        </fieldset>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="wizard.js"></script>
    <script>

        $(document).ready(function () {
            $("#ya").click(function () {

                $.ajax({
                    url: "sekolah.php",
                    method: "POST",
                    data: "status=" + "Y",
                    success: function (data) {
                        $("#show").html(data);
                    }
                });

            });

            $("#tidak").click(function () {
                $.ajax({
                    url: "tidak_sekolah.php",
                    method: "POST",
                    data: "status=" + "N",
                    success: function (data) {
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
                    url: "./admin/get_kelurahan.php", // Buat file get_kelurahan.php untuk mengambil data kelurahan berdasarkan kecamatan
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