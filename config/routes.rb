Rails.application.routes.draw do

  get 'cart/index'
  get 'cart/clear' => "cart#clearCart"
  get 'cart/:id'   => "cart#add"

  devise_for :customers# controllers: {
  #sessions: "customers/sessions",
  #registrations: "customers/registrations", 
  #omniauth_callbacks: "customers/omniauth_callbacks"
  #}
   
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
