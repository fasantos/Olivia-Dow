# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  $('#addAct').on 'click', ->
    acts = $('.actFields').find('.acts')
    alert acts.size()
    nActs = acts.size() + 1
    $(@).find('.acts').addClass('act' + nActs)
    $('.act' + nActs).find('.actLabel').text('Act' + nActs)
    $('.act' + nActs).find('.actInput').attr('value', 'Act' + nActs)
    $('.actFields').append($('.act' + nActs))
  
$(document).ready(ready)
$(document).on('page:load', ready)
