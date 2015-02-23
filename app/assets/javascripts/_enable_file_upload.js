$(function(){
  $('input:file, #employee_remove_avatar').change(function(){
      if ($(this).val()){
        $('#upload_button').removeAttr('disabled').css("cursor","pointer");
      }
    }
  );
});
