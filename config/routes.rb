Rails.application.routes.draw do

  resources :users
  resources :distributors
  resources :orders
  resources :products

  root to: 'users#index'

  match '/signin',     to: 'users#log_in',  via: [:post]
  match '/logout',     to: 'users#destroy', via: [:delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
