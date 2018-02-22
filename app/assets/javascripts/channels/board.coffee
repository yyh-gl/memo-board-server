App.board = App.cable.subscriptions.create "BoardChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    document.getElementById('message-list').removeChild(document.getElementById('message-list').firstChild)
    h = document.createElement('h1')
    h.textContent = data	
    document.getElementById('message-list').appendChild(h)

  put_memo: (msg) ->
    @perform('put_memo', { content: msg })