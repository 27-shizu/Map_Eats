Rails.application.routes.draw do

  get 'restaurants/search'
  get 'restaurants/show'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  resources :users

  get    '/login', to: 'sesstons#new'
  post   '/login', to: 'sesstions#create'
  delete '/logout', to: 'sesstions#destoroy'
end
