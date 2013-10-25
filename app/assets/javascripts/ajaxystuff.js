$(document).ready(function(){
  setTimeout(function(){
    $("#notice").fadeOut("slow", function () {
      $("#notice").remove();
    });

  }, 2000);
});