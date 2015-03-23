# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  setInterval 'updateClock()', 3000

pad = (number) ->
  if number < 10
    '0' + number
  else
    number

@updateClock = ->
  currentTime = new Date
  currentHours = currentTime.getHours()
  currentMinutes = pad(currentTime.getMinutes())

  timeOfDay = if currentHours <12 then 'am' else 'pm'

  twelveHour = currentHours % 12
  twelveHour = if twelveHour == 0 then 12 else pad(twelveHour)

  currentTimeString = "#{twelveHour}:#{currentMinutes} #{timeOfDay}"
  $('#clock').html currentTimeString