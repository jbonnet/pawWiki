# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#fragment-form").hide()
$("#new-fragment-link").click ->
  $("#fragment-form").show()
  return false
jQuery ->
  $('#flash').hide().delay(800).fadeIn(800).delay(4000).fadeOut(800)
