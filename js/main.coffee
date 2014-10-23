$(document).ready ->
  # Track page view
  analytics.page 'Main'

  # Signup form
  $('form').submit (event) ->
    event.preventDefault()

    # Hide form and display thank you message
    $('#signup').hide()
    $('#thank-you').fadeIn('fast')

    data = $(this).serializeArray()
    email = data[0].value

    # Send data
    properties =
      email: email

    analytics.identify email, properties

    false
