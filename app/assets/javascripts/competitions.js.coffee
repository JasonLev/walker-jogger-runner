# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#search').on 'click', (event) ->
    event.preventDefault()
    location = $('#location_search').val()
    $.ajax(
      type: "GET"
      dataType: "json"
      data: {location: location}
      url: '../api'
    ).done (data) ->
      console.log data
      $('.competitions').append JST["templates/events"](results : data["_results"] || [])
