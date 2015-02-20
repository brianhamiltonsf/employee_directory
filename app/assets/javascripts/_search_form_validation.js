$(function(){

    $("#search_submit").submit(function(e){

      if($("#search_term").val()==""))
      {
        e.preventDefault();
       }
    });

});
