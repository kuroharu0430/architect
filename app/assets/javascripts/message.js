// $(function(){
//   $('#messages-form-btn').click(function(){
//     if ($('.messages-form-text').val() == '') {
//       // console.log("dada")
//       return false;
//     }
//     $(document).on('ajax:success', '#message_form', function(e) {
//       console.log(e)
//       $('.messages-form-text').val('');
//       $('.messages-main__chat').prepend('<p>' + e.detail[0] + '</p>');
//     })
  
//   })
// });

$(function(){
  if (window.location.href.match(/\/customers\/\d+\/messages/)){
    var last_message_height =$('.messages-main').get(0).scrollHeight
    $('.messages-main').animate({scrollTop:last_message_height},10);

  }
})
