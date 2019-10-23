$(function(){
  j = 0
  $(".works").on("click",".show__bar-image",function(){
    j = $(this).attr("data-index")
    $(".show__image").fadeOut()
    $(`.show__image[data-index = ${j}]`).fadeIn(1000)
    $(".show__bar-image").css("opacity","1")
    $(`.show__bar-image[data-index = ${j}]`).css("opacity","0.5")
  })


});