<?php
require 'db.php';
  $sekolah = mysqli_query($kon,"SELECT nama FROM tb_sekolah");
?>
<div class="form-group">
  <label>Nama Sekolah</label>
  <select name="sekolah" id="sekolah" class="form-control" style="height: 40px;">
    <option>--- SILAHKAN PILIH ---</option>
    <?php
    foreach ($sekolah as $skh) :
    ?>
      <option value="<?= $skh['nama'] ?>"><?= strtoupper($skh['nama']) ?></option>
    <?php endforeach; ?>
  </select>
</div>

<span id="textschool"></span>

<script type="text/javascript">
  $(document).ready(function(){

    $("#sekolah").change(function(){
      var sekolah = $(this).val();

      if (sekolah == "Tidak ada disini")
      {
        $.ajax({
          url: "text_sekolah.php",
          data: "sekolah=" + sekolah,
          method: "POST",
          success: function(data){
            $("#textschool").html(data);
          }
        });
      } else {
         $("#textschool").html('');
       }
    });
    
    $.ajax({
      method: "POST",
      data: "sekolah=" + sekolah,
      success: function(data){
        html('<input type="hidden" name="sekolah" value="' + sekolah + '">');
      }
    });

  });
</script>