jQuery(document).on 'turbolinks:load', ->
  private_messages = $('#private_messages')
  if $('#private_messages').length > 0
    messages_to_bottom = -> private_messages.scrollTop(private_messages.prop("scrollHeight"))

    messages_to_bottom()

    App.global_chat = App.cable.subscriptions.create {
        channel: "PrivateChatRoomsChannel"
        private_chat_room_id: private_messages.data('private-chat-room-id')
      },
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        private_messages.append data['private_message']
        messages_to_bottom()

      send_message: (private_message, private_chat_room_id) ->
        @perform 'send_message', private_message: private_message, private_chat_room_id: private_chat_room_id


    $('#new_private_message').submit (e) ->
      $this = $(this)
      textarea = $this.find('#private_message_body')
      if $.trim(textarea.val()).length > 1
        App.global_chat.send_message textarea.val(), private_messages.data('private-chat-room-id')
        textarea.val('')
      e.preventDefault()
      return false
