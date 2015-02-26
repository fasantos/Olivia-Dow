# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  if $('.photo img').height() >= 1000
    $('.photo img').css('height', ($('.backgroundsize').height() - 10) + 'px')
    
  if $('.photo img').width() < 665
    $('.photo img').css('width', '665px')
    

  $('.background, .box').animate({'opacity':'1.00'}, 5000,'linear');
  $('.background, .box').css('display', 'block');
  $('.slides ul').cycle({
    fx:'fade',
    speed: 2000,
    timeout: 2000,
    prev:'.left',
    next:'.right',
  });

  closeAlbum = ->
    $('.background, .box').animate({'opacity':'.0'}, 500, 'linear', ->
        $('.background, .box').css('display','none');
        );
    $('.slides ul').cycle('stop');

$(document).ready(ready)
$(document).on('page:load', ready)
