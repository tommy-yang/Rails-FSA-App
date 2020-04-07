Rails.application.routes.draw do
  
  resources :fsas
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :postals
  resources :categories, except: [:destroy]
end
