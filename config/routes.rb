Rails.application.routes.draw do
  root 'memos#board'
  get '/memos/:id', to: 'memos#show'

  mount ActionCable.server => '/cable'
end
