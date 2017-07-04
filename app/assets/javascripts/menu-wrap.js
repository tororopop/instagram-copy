// var menuHeight = $("#menu-wrap").height(); #50のところに入れるべきだが、読み取れず
var startPos = 0;
$(window).scroll(function(){
  var currentPos = $(this).scrollTop();
  if (currentPos > startPos) {
    if($(window).scrollTop() >= 200) {
      $("#menu-wrap").css("top", "-" + 50 + "px");
    }
  } else {
    $("#menu-wrap").css("top", 0 + "px");
  }
  startPos = currentPos;
});
