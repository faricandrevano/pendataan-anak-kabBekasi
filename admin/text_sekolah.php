<div class="form-group">
  <label>Isi nama sekolah dibawah jika tidak terdapat dalam daftar diatas</label>
  <input type="text" name="sekolah" id="sekolah" placeholder="Masukkan nama sekolah" value="<?= $gb["sekolah"] ?>" class="form-control">
</div>

<script type="text/javascript">
  $(document).ready(function(){

    var sekolah = $(this).val();

    $.ajax({
      method: "POST",
      success: function(e){
        html('<input type="hidden" name="sekolah" value="' + sekolah + '">');
      }
    });

  });
</script>