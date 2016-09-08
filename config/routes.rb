Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  #get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/log_in', to: 'static_pages#log_in'
  get '/sign_in', to: 'static_pages#sign_in'
  resources :users
  #help_path -> '/help'
  #help_url -> 'localhost:3010/help'
  #get 'static_pages/help'
  #get 'static_pages/about'
  #get 'static_pages/sign_in'
  #get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
end
