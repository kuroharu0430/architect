$(function(){
    $('.nav__name').addClass('move')
    $('.top__left-message, .top__card-letter, .header__list' ).css("display","none")
    $('.top').animate({'opacity':"1"},3000,function(){
      $('.reflection').fadeIn() 
      $('.top').addClass('brightly')
      $('.top__message').fadeIn()
      $('.top__left-message, .top__card-letter, .header__list' ).show("drop",{direction:"down"},1000)


    })



})
