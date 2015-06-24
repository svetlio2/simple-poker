window.client = new Faye.Client('/faye', {retry: 5})

try
  client.unsubscribe '/chat_rooms/6'
catch
  console?.log "Can't unsubscribe."

jQuery ->
  client.subscribe '/chat_rooms/*', (payload) ->
    $('#messages').find('.media-list').append(payload.message) if payload.message 

  $('#new_message').submit -> $(this).find("input[type='submit']").val('Sending...').prop('disabled', true)

