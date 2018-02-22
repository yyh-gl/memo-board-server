class BoardChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'board:content'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def put_memo(data)
    BoardChannel.broadcast_to('content', data['content'])
  end
end
