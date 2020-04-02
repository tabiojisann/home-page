Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
 
  resources :users,  only: [:show, :edit, :update]
  resources :posts
  resources :tweets, only: [:index, :new, :create, :destroy]
  # resources :rooms, only: [:show]
  resources :messages, only: [:index, :create]
  delete :messages, to: 'messages#destroy_all'

    
    

end




