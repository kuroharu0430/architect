$(function(){

  $('.works__slide').css("opacity","0")
  $('.works__slide-image').css("display","none")
  $('.works__box-dummy').css("display","none")
  $('.works__box:before').css("display","none")

  var worksFlag =false
  $(window).on('scroll', function(){
      var height=$(window).scrollTop()+$(window).height()-200;
        if ( height > $(".works").offset().top){
          if(!worksFlag){
            worksFlag = true;
            $('.works__box-dummy').show('drop',{direction:"down"},700,function(){
              // $('.works__left-bar').show('drop',{direction:"down"},500)
              index=0
              $('.works__slide').animate({opacity:"1"},1000)
              $('.works__slide-image').eq(index).show('slide',{direction:"left"},500)
              $(".title").eq(index).fadeIn()
              $('.masking').eq(index).css("opacity","1")
              product_slide = setInterval(works_slide,3000)
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
        $(".title").fadeOut()
        $(".title").eq(index).fadeIn()

        $('.masking').css("opacity","0")
        $('.masking').eq(index).css("opacity","1")
        }


});