<?php
require "db.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = mysqli_query($kon,"SELECT * FROM tb_kelurahan WHERE id_kecamatan = '".$_POST["kecamatan"] ."' ");
    $kelurahanList = $data;

    echo "<option value=''>Pilih Kelurahan</option>";
    foreach ($kelurahanList as $kelurahan) {
        echo "<option value=\"{$kelurahan['nama']}\">{$kelurahan['nama']}</option>";
    }
} else {
    echo "Invalid request";
}

function getKelurahanByKecamatan($kecamatan) {
    // Gantilah bagian ini dengan data kelurahan sesuai kecamatan
    switch ($kecamatan) {
        case "Kecamatan B":
            return array("Bahagia","Kebalen");
        case "Kecamatan B":
            return array("Kelurahan 1B", "Kelurahan 2B", "Kelurahan 3B");
        case "Kecamatan C":
            return array("Kelurahan 1C", "Kelurahan 2C", "Kelurahan 3C");
        default:
            return array();
    }
}
?>