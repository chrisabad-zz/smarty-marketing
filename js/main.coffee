$(document).ready ->
  $('form').submit (event) ->
    event.preventDefault()

    # Hide form and display thank you message
    $('#signup').hide()
    $('#thank-you').fadeIn('fast')

    # Send data

    false
