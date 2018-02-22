class MemosController < ApplicationController
  def show
    # @memo = Memo.find(1)
  end

  def test
    tmp = Memo.find(params[:id].to_i).content
    # BoardChannel.broadcast_to('content', data['content'])
    BoardChannel.broadcast_to('content', tmp)
  end
end
