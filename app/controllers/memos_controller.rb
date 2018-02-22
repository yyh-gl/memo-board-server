class MemosController < ApplicationController
  def show
    @memo = Memo.find(params[:id].to_i).content
    BoardChannel.broadcast_to('content', @memo)
  end

  def board
  end
end
