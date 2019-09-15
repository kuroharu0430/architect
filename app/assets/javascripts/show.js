$(function(){

  var slide_left = $('.show__slide-left-frame-image');
  slide_left.eq(0).show('drop');
  var j=0
  $('.slide_bar-image').click(function(){
    j = $(this).index()
    slide_show()

  })

  $('.fa-caret-square-left').click(function(){
    j--
    j=j%slide_left.length
    slide_show()
  })
  
  $('.fa-caret-square-right').click(function(){
    j++
    j=j%slide_left.length
    slide_show()
  })
  
  var slide_show =function(){
    slide_left.hide('drop',{direction:"right"})
      slide_left.eq(j).show('drop');

    $('.slide_bar-image').removeClass('choose');
    $('.slide_bar-image').eq(j).addClass('choose');
  }
  
});



$(function(){
  var slide_right = $('.show__slide-right-frame-image');
    k=1
    slide_right.eq(1).show('drop',{direction:"right"});
    var show_reload =function(){
      k++
      k=k%slide_right.length
      slide_right.eq(k).show('drop',{direction:"right"},1000,function(){
        slide_right.eq(k-1).hide('fade');
      });
    };
  setInterval(show_reload, 4000)
});