# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

createSliders = ->
  # Scale value in range [-3, 3] to [0, 255]
  scale = (value) ->
    Math.floor((3 + value) * 255 / 6)

  updateInputs = (hc, rt, md) ->
    $('#herb_heat_cool').val(hc)
    $('#herb_relax_tone').val(rt)
    $('#herb_moisten_dry').val(md)

  updateComposite = (hc, rt, md) ->
    r = scale(hc)
    g = scale(rt)
    b = scale(md)
    $('#composite').css('background-color', 'rgb('+r+','+g+','+b+')')

  handleSlide = (event, ui ) ->
    hc = $('#HC').slider('value')
    rt = $('#RT').slider('value')
    md = $('#MD').slider('value')
    updateInputs(hc, rt, md)
    updateComposite(hc, rt, md)

  # create sliders
  $('#HC, #RT, #MD').slider({min: -3, max: 3, step: 1, orientation: 'horizontal', range: 'min', value: 0, slide: handleSlide, change: handleSlide})
  # set initial values
  $('#HC').slider('value', $('#herb_heat_cool').val())
  $('#RT').slider('value', $('#herb_relax_tone').val())
  $('#MD').slider('value', $('#herb_moisten_dry').val())
  

$(document).ready createSliders
$(document).on "page:load", createSliders
