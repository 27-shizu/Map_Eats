Rails.application.routes.draw do

  get 'restaurants/search'
  get 'restaurants/show'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
end
