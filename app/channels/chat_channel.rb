#
# ChatChannel
#
# @author sufinsha
#
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(message)
    ActionCable.server.broadcast('chat_channel', message)
  end
end
