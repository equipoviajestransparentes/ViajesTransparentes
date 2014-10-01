# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(document).on 'change', '#trip_pais', (evt) ->
    $.ajax '/update_estado',
      type: 'GET'
      dataType: 'script'
      data: {
        pais_id: $("#trip_pais option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")


  $(document).on 'change', '#trip_estado', (evt) ->
    $.ajax '/update_ciudad',
      type: 'GET'
      dataType: 'script'
      data: {
        estado_id: $("#trip_estado option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")