$(function(){
  j = 0
  $(".works__left-bar").click(function() {
    show = setInterval(show_reload,3000)
  })

  var show__slide = function(){
    var slide_number = $(".show__image").length
    j = j%slide_number
    if (j<0){
      j = j + slide_number
    }
    console.log(j)
    $(".show__image").fadeOut()
    $(`.show__image[data-index = ${j}]`).fadeIn(1000)
    $(".show__bar-image").css("background","none")
    $(`.show__bar-image[data-index = ${j}]`).css("background","aqua")
    }
  
  var slide_change = function(){
    clearInterval(show)
    show__slide()
    show = setInterval(show_reload,3000)
  } 

  $(".works").on("click",".show__bar-image",function(){
    j = $(this).attr("data-index")
    slide_change()
  })
  $(".works").on("click",".prev",function(){
    j--
    slide_change()
  })
  $(".works").on("click",".next",function(){
    j++
    slide_change()
  })

  var show_reload = function(){
    j++
    show__slide(j)
  }
});