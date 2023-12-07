<div class="form-group">
  <label>Alasan Tidak Bersekolah</label>
  <textarea name="alasan" id="alasan" placeholder="Alasan Tidak Bersekolah" class="form-control"></textarea>
</div>

<script type="text/javascript">
  
  $(document).ready(function(){
    var alasan = $(this).val();
    $.ajax({
      method: "POST",
      data: "alasan=" + alasan,
      success: function(data){
        html('<input type="hidden" name="alasan" value="' + alasan + '">');
      }
    });

  });
</script>