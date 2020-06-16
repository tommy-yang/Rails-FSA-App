Rails.application.routes.draw do
  
  resources :deliveries
  resources :polygons
  resources :shapes
  resources :autocompletes
  resources :places
  resources :fsas
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :postals
  resources :categories, except: [:destroy]
end
