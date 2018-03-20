App.user = App.cable.subscriptions.create "UserChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	$('#messages').append "<p>#{data}</p>"

  speak: (message) ->
    @perform 'speak', message: message
