# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  setInterval (->
    $("#slideshow :first-child").fadeOut(1000).next("img").fadeIn(1000).end().appendTo "#slideshow"
  ), 4000
