class UserChannel < ApplicationCable::Channel
  def subscribed
    stream_from "user_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	ApplicationCable.server.broadcast 'user_channel', data['message']
  end
end
