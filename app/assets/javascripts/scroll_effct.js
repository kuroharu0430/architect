$(function(){
  $(window).on('scroll', function(){
    var height=$(window).scrollTop()+$(window).height();

    $('.float').each(function(){
      if ( height > $(this).offset().top){
        $(this).animate({opacity:0},2000);
      }
    })
  })
});

