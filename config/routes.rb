Models::Application.routes.draw do
  resources :books


  resources :photographers


  resources :agents


  resources :models


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end