Rails.application.routes.draw do
  root 'deliveries#index'
  
  get 'about', to: 'pages#about'
  
  resources :shapes
  resources :autocompletes
  resources :places
  resources :fsas
  resources :postals
  resources :categories, except: [:destroy]
  resources :deliveries
end
