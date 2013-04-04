# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.expander.defaults.slicePoint = 400

$(document).ready ->

  $(".expandable").expander
    slicePoint: 400
    expandPrefix: "... "
    expandText: "Read More"
    collapseTimer: 0
    userCollapseText: "Read Less"


  $(".expandable-max").expander
    slicePoint: 1800
    expandPrefix: "... "
    expandText: "Read More"
    collapseTimer: 0
    userCollapseText: "Read Less"
