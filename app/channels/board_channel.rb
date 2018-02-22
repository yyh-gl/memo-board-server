class BoardChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'board:content'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def put_memo(data)
    tmp = Memo.find(data['content'].to_i).content
    # BoardChannel.broadcast_to('content', data['content'])
    BoardChannel.broadcast_to('content', tmp)
  end
end
