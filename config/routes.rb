Rails.application.routes.draw do
 
  devise_for :users
  root to: "pages#index"
 
  resources :pages
  
  resources :users do
    resources :posts
    resources :tweets
 end 

end


