$(function(){
  
  $(document).on("click",".show__bar-image",function(){
    var show_index = $(this).attr("data-index")
    console.log(show_index)
    $('.show_image').fadeOut()
    $(`.show_image[data-index = ${show_index}]`).fadeIn(1000)
    $('.show__bar-image').css("opacity","1")
    $(`.show__bar-image[data-index = ${show_index}]`).css("opacity","0.5")
  })

});