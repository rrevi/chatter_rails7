Rails.application.routes.draw do
  resources :posts
  post 'posts/:id/repost', to: 'posts#repost'
  post 'posts/:id/like', to: 'posts#like'

  # Defines the root path route ("/")
  root "posts#index"
end
