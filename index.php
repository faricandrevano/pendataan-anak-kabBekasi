<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="wizard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="img/bekasi1.png">
    <script src="js/bootstrap.js"></script>
    <title>Pendataan Anak Kab. Bekasi</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>

<body>

    <!-- START NAVBAR -->

    <?php require "navbar.php"; ?>

    <!-- END NAVBAR -->

    <!-- START HEADER -->
    <div class="banner p-5 text-light" id="home">
        <div class="row align-items-center justify-content-center ps-0 ps-lg-5">
            <div class="col-12 col-lg-6 text-center text-lg-start ps-0 ps-lg-4">
                <h1 class="">PENDATAAN ANAK KABUPATEN BEKASI UMUR 5&nbsp;-&nbsp;6 TAHUN</h1>
                <div class="text-center text-lg-start">
                    <p id="text-jumbotron2">Anak Anda Belum Terdaftar ?</p>
                    <a href="daftardonk.php" class="btn btn-dark px-5 py-2" type="button"><i
                            class="fas fa-user-plus"></i>&nbsp; DAFTAR
                        DI
                        SINI</a>
                </div>
            </div>
            <div class="col-12 col-lg-4 mt-2 mt-lg-0 text-center">
                <img src="img/keluarga.png" class="img-fluid p-3 p-lg-0" alt="">
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-9">
                <p id="text-jumbotron"><i class="fas fa-search"></i>&nbsp; Cari Data Anak Anda Disini</p>
                <div class="input-group mb-3" style="height: 60px;">
                    <input type="number" id="nik_anak" class="form-control" placeholder="Masukkan NIK Anak Anda"
                        aria-label="Recipient's username" aria-describedby="button-addon2">
                    <button class="btn btn-light px-4" type="button" id="button-addon2"><i
                            class="fa-solid fa-magnifying-glass"></i></button>
                    <span id="respon"></span>
                </div>
            </div>
        </div>
    </div>
    <!-- END HEADER -->

    <!-- START CARA DAFTAR -->

    <div class="container text-center" id="cara">
        <div class="row justify-content-center mt-3">
            <div class="col-12 col-lg-6">
                <h1>CARA MENDAFTAR</h1>
                <hr style="border: 0;
                height: 3px !important;
                background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));">
            </div>
        </div>
        <div class="row">
            <center>
                <div class="col-12">
                    <div class="daftar d-flex align-items-center justify-content-center">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <p class="mt-2">Tekan tombol daftar pada menu utama</p>
                    <div class="garisDaftar"></div>
                    <div class="anak d-flex align-items-center justify-content-center">
                        <i class="fa fa-child fs-4"></i>
                    </div>
                    <p class="mt-2">Isi data anak anda</p>
                    <div class="garisAnak"></div>
                    <div class="anda d-flex align-items-center justify-content-center">
                        <i class="bi bi-people-fill fs-4"></i>
                    </div>
                    <p class="mt-2">Isi data anda</p>
                    <div class="garisAnda"></div>
                    <div class="submit d-flex align-items-center justify-content-center">
                        <i class="fas fa-download"></i>
                    </div>
                    <p class="mt-2">Tekan tombol submit</p>
                    <div class="garisSubmit"></div>
                    <div class="selesai d-flex align-items-center justify-content-center">
                        <i class="fas fa-check"></i>
                    </div>
                    <p class="mt-2">Anak anda berhasil terdaftar</p>
                </div>
            </center>
        </div>
    </div>

    <!-- END CARA DAFTAR -->

    <!-- START SYARAT -->

    <div class="syarat p-3 justify-content-center" id="syarat">
        <h1 class="text-center text-light">Dokumen Yang Di Daftarkan</h1>
        <hr style="border: 0;
        height: 3px !important;
        background-image: linear-gradient(to right, rgba(173, 173, 173, 0), rgba(255, 255, 255, 1), rgba(110, 110, 110, 0));">
        <div class="container ps-0 ps-lg-5">
            <div class="row">
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="bi bi-123"></i>
                        </span> NIK Anak
                    </p>
                </div>
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="bi bi-postcard"></i>
                        </span> Nama Orangtua & Anak
                    </p>
                </div>
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="fas fa-baby"></i>
                        </span>Tempat Tanggal Lahir
                    </p>
                </div>
            </div>
            <div class="row my-0 my-lg-3">
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="bi bi-telephone-fill"> </i>
                        </span> Nomor Telepon Orangtua
                    </p>
                </div>
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="fas fa-home"></i>
                        </span>Alamat
                    </p>
                </div>
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="fas fa-school"></i>
                        </span> Status Sekolah Anak
                    </p>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-12 col-lg-4">
                    <p class="text-light fs-4 d-flex align-items-center">
                        <span class="syarat-icon d-flex align-items-center justify-content-center me-3">
                            <i class="fas fa-globe-asia"></i>
                        </span>Kecamatan
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- END SYARAT -->

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    <script>
        $("#nik_anak").keyup(function(e){
            var nik_anak = $("#nik_anak").val();

            if (nik_anak == ""){
                alert("SILAHKAN ISI NIK ANAK ANDA TERLEBIH DAHULU !");
            } else {
                if (e.keyCode == 13){
                    $.ajax({
                        url: "get_nik.php",
                        method: "POST",
                        data: "nik_anak=" + nik_anak,
                        success: function(data){
                            $("#respon").html(data);
                        }
                    });
                }
            }

        });

        $("#button-addon2").click(function(){
            var nik_anak = $("#nik_anak").val();

            if (nik_anak == ""){
                alert("SILAHKAN ISI NIK ANAK ANDA TERLEBIH DAHULU !");
            } else {
                $.ajax({
                    url: "get_nik.php",
                    method: "POST",
                    data: "nik_anak=" + nik_anak,
                    success: function(data){
                        $("#respon").html(data);
                    }
                });
            }

        });

        $(window).scroll(function () {

            // var scroll = $(window).scrollTop();

            if (scroll >= 230) {
                $(".daftar").addClass("scrollDaftar");
            } else {
                $(".daftar").removeClass("scrollDaftar")
            }
            if (scroll >= 430) {
                $(".anak").addClass("scrollAnak");
            } else {
                $(".anak").removeClass("scrollAnak")
            }
            if (scroll >= 610) {
                $(".anda").addClass("scrollAnda");
            } else {
                $(".anda").removeClass("scrollAnda")
            }
            if (scroll >= 810) {
                $(".submit").addClass("scrollSubmit");
            } else {
                $(".submit").removeClass("scrollSubmit")
            }
            if (scroll >= 1000) {
                $(".selesai").addClass("scrollSelesai");
            } else {
                $(".selesai").removeClass("scrollSelesai")
            }


            if (scroll >= 400) {
                $(".garisDaftar").addClass("garisDaftarScroll");
            } else {
                $(".garisDaftar").removeClass("garisDaftarScroll")
            }
        });
    </script>
</body>

</html>