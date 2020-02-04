Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  resources :pages, except: :index
  resources :users, only: :show
end
