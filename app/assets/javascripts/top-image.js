$(function(){

  var dot =function(){
    // $('.top__screen-title').show("slide",{direction:"left"},function(){
      $('.dot').fadeIn(1,function(){
        $('.dot').addClass('shrink')
      // })
      setTimeout(imageReload,2000)
    })
    }

    var typeWritter = $('.top__screen-title p').html().split("");
    $('.top__screen-title p').html("")
    $.each(typeWritter,function(index,val){
      letter = $("<span/>").text(val).css({opacity:0});
       $('.top__screen-title').append(letter)
      letter.delay(index*500);
      letter.animate({opacity:1},10);
    })
    setTimeout(dot,2000)
    
  var imageReload = function(){
    $('.top__screen').fadeOut()
    setTimeout(slideReload,3000)
  }

  
  var slideReload = function(){
    var top_slide = $('.top__slide-flame-image');
    var top_heading = $('.top__slide-flame-heading');
     $('.top__image').fadeOut(500);
          i=0
          var slide =function(){
            top_slide.eq(i).show('slide',{direction:"left"},500,function(){
              top_slide.eq(i).show('slide',{direction:"left"},500)
                top_heading.eq(i).show('slide',{direction:"left"},500,function(){
              setTimeout(fadeOut,5000)
               top_slide.eq(i).animate({'left':'0px'},5000,'linear')
              $('.heading-virtical').show('slide',{direction:'up'},200,function(){
                $('.heading-cross').show('slide',{direction:'left'},200,function(){
                  
                  $('.heading-name').eq(i).show('slide',{direction:'left'},500)
                  $('.heading-title').eq(i).show('slide',{direction:'up'},500)
                })
              })
            })
            var fadeOut = function(){
              // top_slide.eq(i).hide('slide',{direction:"right"},500);
              if (i == top_slide.length-1){
                window.location.reload()
              }else{
                top_heading.eq(i).hide('slide',{direction:"left"},500);
                $('.heading-name').eq(i).hide('slide',{direction:'left'},500)
                $('.heading-title').eq(i).hide('slide',{direction:'top'},500)
                i++
                slide()
              }

            }
              
          })
            
        }
       var stop = setTimeout(slide,500)
    }
  // var page_reload =function(){
  //   window.location.reload()
  // }
  // setInterval(page_reload,40000)
})