Rails.application.routes.draw do
  root :to => 'products#index'
  get 'session/new'

  resources :products, :users
end
