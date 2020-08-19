Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  get 'session/login'
  
  resources :menus, only: [:index, :show] 
  resources :foods, only: [:show]
  resources :users, only: [:new, :create]
  resources :orders
  resources :food_orders
  # resources :ingredient
  # resources :food_ingredient
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
