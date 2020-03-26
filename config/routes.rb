Rails.application.routes.draw do
  
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :postals
  resources :categories, except: [:destroy]
end
