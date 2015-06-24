window.client = new Faye.Client('/faye', {retry: 5})

try
  client.unsubscribe '/chat_rooms/6'
catch
  console?.log "Can't unsubscribe."

jQuery ->
  client.subscribe '/chat_rooms/6', (payload) ->
    $('#messages').find('.media-list').append(payload.message) if payload.message 

