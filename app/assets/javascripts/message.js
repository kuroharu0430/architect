$(function(){
  if (window.location.href.match(/\/customers\/\d+\/messages/)){
    var last_message_height =$('.messages-main').get(0).scrollHeight
    $('.messages-main').animate({scrollTop:last_message_height},10);

    var reload_messages = function(){
      var last_message_id = $('.message:last').attr("data-mesage_id")
      $.ajax({
        url:'messages/auto',
        type:'get',
        datatype:'json',
        data:{id: last_message_id}
      })
    }
  }
  setInterval(reload_messages, 5000)

  $(function() {
    var $textarea = $('.messages-form-text');
    var lineHeight = parseInt($textarea.css('lineHeight'));
    $textarea.on('input', function(evt) {
      var lines = ($(this).val() + '\n').match(/\n/g).length;
      $(this).height(lineHeight * lines);

      $('#messages-form-btn').on('click',function(){
        location.reload()
      })
    });
    $('.message-image').click(function(){
      console.log('dada')
      $(this).toggleClass("scale")
    })

  });

  

})
