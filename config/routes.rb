Rails.application.routes.draw do
  
  resources :time_slots
  resources :weekdays
  resources :polygons
  resources :places
  resources :fsas
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :postals
  resources :categories, except: [:destroy]
end
