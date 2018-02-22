Rails.application.routes.draw do
  root 'memos#show'

  mount ActionCable.server => '/cable'
end
