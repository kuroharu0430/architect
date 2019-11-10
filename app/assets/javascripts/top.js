$(function(){
    $('.nav__name').addClass('move')
    $('.top__left-message, .top__card-letter, .header__list ,.top__left-message' ).css("display","none")
    $('.top').animate({'opacity':"1"},3000,function(){
      $('.reflection').fadeIn() 
      $('.top').addClass('brightly')
      $('.top__message').fadeIn()
      $('.top__card-letter' ).show("drop",{direction:"down"},1000)
      $('.top__left-message, .header__list').fadeIn(1000)
    })



})
