$(function(){

    var typeWritter = $('.top__screen-title h1').html().split("");
    $('.top__screen-title h1').html("")

    $.each(typeWritter,function(index,val){
      letter = $("<span/>").text(val).css({opacity:0});
       $('.top__screen-title').append(letter)
      letter.delay(index*100);
      letter.animate({opacity:1},1000);
    })
    
  var imageReload = function(){
    $('.top__screen').fadeOut(function(){
      $('.hand-writing').animate({'marginTop':"0"},700,'swing',function(){
        $('.hand-writing').addClass('expansion');
      })
    })

    setTimeout(slideReload,10000)
  }
  setTimeout(imageReload,3500)
  
  var slideReload = function(){
    var top_slide = $('.top__slide-frame-image');
    var top_heading = $('.top__slide-frame-heading');
     $('.top__image').fadeOut(1500)
          i=0
          var slide =function(){
            top_slide.eq(i).animate({opacity:1},1000,function(){
                top_heading.eq(i).show('slide',{direction:"left"},500,function(){

                  $('.card').removeClass('select')
                  $('.card').eq(i).addClass('select')

              setTimeout(fadeOut,5000)
               top_slide.eq(i).animate({'left':'0px'},5000,'linear')
              // $('.heading-virtical').show('slide',{direction:'up'},200,function(){
              //   $('.heading-cross').show('slide',{direction:'left'},200,function(){
                  
                  $('.heading-name').eq(i).show('slide',{direction:'left'},300,function(){
                    $('.heading-title').eq(i).show('slide',{direction:'up'},300)
                  })
                // })
              // })
            })
            var fadeOut = function(){
              top_heading.eq(i).hide('slide',{direction:'left'},100)
              $('.heading-name').eq(i).hide('slide',{direction:'left'},100)
              $('.heading-title').eq(i).hide('slide',{direction:'top'},100)
              // top_slide.animate({opacity:0},500)

              i++
              var top_reload = function(){
                window.location.reload()
              }
              if (i == top_slide.length){
                top_slide.animate({opacity:0},1000)
                setTimeout(top_reload,3000)
              }else{
                slide()
              }
            }              
          })
            
        }
       var stop = setTimeout(slide,500)
    }
})