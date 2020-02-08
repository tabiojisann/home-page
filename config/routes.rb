Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  resources :pages
  resources :users 
  resources :posts
  resources :tweets
  resources :rooms

  mount ActionCable.server => '/cable'

end




