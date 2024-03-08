Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  post 'posts/:id/repost', to: 'posts#repost'
  post 'posts/:id/like', to: 'posts#like'

  # Defines the root path route ("/")
  root "posts#index"
end
