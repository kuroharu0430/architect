$(function(){
  $(window).scroll(function(){
    var y = $(this).scrollTop()-800;
    // $('.circle').css('background-position', '0 ' + parseInt( -y / 5) + 'px');
    // $('.business').css('background-position-x', '0px ' + parseInt( y /5 ) + 'px');
    $('.business').css('background-position-y', parseInt( y/10) + 'px');

  })

})