Rails.application.routes.draw do
  
  root 'pages#index'

  resources :posts
  devise_for :users
  

  get '/home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get '/explore' => 'pages#explore'

  
end
