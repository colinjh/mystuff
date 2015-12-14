Rails.application.routes.draw do
  root :to => 'products#index'
  get 'session/new'

  resources :products, :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
