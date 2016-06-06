Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  namespace :admin do
    get '/n' => "pages#index" 
  end
     namespace :muni do
    get '/' => "pages#index" 
    get '/:id' => "pages#show" 
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
