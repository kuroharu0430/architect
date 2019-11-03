$(function(){
  if (window.location.href.match(/\/customers\/\d+\/messages/)){
    var last_message_height =$('.messages-main').get(0).scrollHeight
    $('.messages-main').animate({scrollTop:last_message_height},10);

    var reload_messages = function(){
      var last_message_id = $('.message:last').attr("data-mesage_id")
      console.log(last_message_id)
      $.ajax({
        url:'messages/auto',
        type:'get',
        datatype:'json',
        data:{id: last_message_id}
      })
    }
  }
  setInterval(reload_messages, 5000)


  
})
