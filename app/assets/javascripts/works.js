$(function(){
  $('.works__slide-image').css("display","none")
  $('.works__box-dummy').css("display","none")
  $('.works__box:before').css("display","none")

  // $('.works__left-bar').css("display","none")

  // $(window).on('scroll', function(){
  //   var height=$(window).scrollTop()+$(window).height()-100;
  //     $('.works').each(function(){
  //     if ( height > $(this).offset().top){
  //       $(this).animate({opacity:1,marginTop:0},1000);
  //     }
  //   })
  // })

  var worksFlag =false
  $(window).on('scroll mouseenter', function(){
    
      var height=$(window).scrollTop()+$(window).height()-200;
        if ( height > $(".works").offset().top){
          if(!worksFlag){
            worksFlag = true;
            $('.works__box-dummy').show('drop',{direction:"down"},700,function(){
              // $('.works__left-bar').show('drop',{direction:"down"},500)
              index=0
              $('.works__slide-image').eq(index).show('slide',{direction:"left"},500)
              setInterval(works_slide,3000)
          });
          }
        }
      })
      

      var works_slide =function(){
        index++
        index = index%4
        var top_slide = $('.works__slide-image')
        top_slide.eq(index-2).css("display","none")
        top_slide.eq(index-1).css("z-index","0")
        top_slide.eq(index).css({"z-index":"1","display":"block"}).addClass('active')
        }


});