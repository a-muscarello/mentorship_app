class PrivateMessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
      ActionCable.server.broadcast "private_chat_rooms_#{message.private_chat_room.id}_channel",
                                   private_message: render_message(message)

  end

  private
  def render_message(message)
    PrivateMessagesController.render partial: 'private_messages/private_message', locals: {private_message: message}
  end

end
