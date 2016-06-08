Rails.application.routes.draw do

  devise_for :customers
  
  devise_for :users
  
  namespace :muni do
    get '/' => "pages#index" 
    get '/perfil' => "pages#show", as: 'profile'
  end
   namespace :admin do
    get '/n' => "pages#index" 
  end
    

  get 'pages/index'

  get 'pages/contact'

  get 'pages/us'


   

  resources :craftsmen
  resources :products
  resources :admin
  resources :muni
  

  root 'pages#index'

  end
