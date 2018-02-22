Rails.application.routes.draw do
  root 'memos#show'
  get '/memos/:id', to: 'memos#test'

  mount ActionCable.server => '/cable'
end
