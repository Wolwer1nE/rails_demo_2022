Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "home#index"

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'

  get '/dashboard', to: 'dashboard#index'
end
