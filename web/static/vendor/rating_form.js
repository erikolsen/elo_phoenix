$(document).ready(function(){
  $(".ratingForm").submit(function(e){
    e.preventDefault();
    //$.ajax({
      //type: "POST",
      //url: '/calculate',
      //data: $(".ratingForm").serialize(),
      //success: function(data) {
        //alert(data[:rating_change]);
      //}
    //});
  });
});
