# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#Evento AJAX OnChange del combo País Origen
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
        console.log("Seleccion Dinamica Pais OK")


#Evento AJAX OnChange del combo Estado Origen
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
        console.log("Seleccion Dinamica Estado OK")


#Evento AJAX OnChange del combo Ciudad Origen
   $(document).on 'change', '#trip_ciudad', (evt) ->
    $.ajax '/update_localidad',
      type: 'GET'
      dataType: 'script'
      data: {
        localidad_id: $("#trip_ciudad option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Seleccion Dinamica Ciudad OK")


#Evento AJAX OnChange del combo País Destino
  $(document).on 'change', '#trip_pais_d', (evt) ->
    $.ajax '/update_estado_d',
      type: 'GET'
      dataType: 'script'
      data: {
        pais_id: $("#trip_pais_d option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Seleccion Dinamica Pais OK")


#Evento AJAX OnChange del combo Estado Origen
  $(document).on 'change', '#trip_estado_d', (evt) ->
    $.ajax '/update_ciudad_d',
      type: 'GET'
      dataType: 'script'
      data: {
        estado_id: $("#trip_estado_d option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Seleccion Dinamica Estado OK")


#Evento AJAX OnChange del combo Ciudad Origen
   $(document).on 'change', '#trip_ciudad_d', (evt) ->
    $.ajax '/update_localidad_d',
      type: 'GET'
      dataType: 'script'
      data: {
        localidad_id: $("#trip_ciudad_d option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Seleccion Dinamica Ciudad OK")