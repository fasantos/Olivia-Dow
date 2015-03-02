# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->   
  $('aside').css('height', $('#content').height() + 'px')
  
  alert(articles_years.to_s)

$(document).ready(ready)
$(document).on('page:load', ready)