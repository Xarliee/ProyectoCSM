Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  namespace :admin do
    get '/n' => "pages#index" 
  end
     namespace :muni do
    get '/' => "pages#index" 
  end

  get 'pages/index'

  get 'pages/contact'

  get 'pages/us'


   

  resources :craftsmen
  resources :products
  resources :craftsmen
  

  root 'pages#index'

  end
