Models::Application.routes.draw do
  

  resources :sites


  authenticated :user do
    root :to => 'users#dashboard'
  end

  scope :module => 'akira' do
  end

  match '/' => 'users#show', :constraints => { :subdomain => /.+/ }

  resources :books
  resources :photographers
  resources :agents
  resources :models


  devise_for :users , path_names: { sign_in: "login", sign_out: "logout"}

  resources :users do
     collection do
      get 'dashboard'
    end
  end

  root :to => "home#index"



end