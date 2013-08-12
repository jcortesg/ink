Models::Application.routes.draw do
  
  authenticated :user do
    root :to => 'users#dashboard'
  end

  namespace :site do
    match '/' => 'site#show', :constraints => { :subdomain => /.+/ }
    resources :users, only: [ :show ]
  end

  namespace :akira do
    resources :books
    resources :photographers
    resources :users do
     collection do
      get 'dashboard'
    end
  end
  end

  namespace :home do
    resources :sites
    resources :users, only: [:index, :show ]
    root :to => "home#index"
  end

  devise_for :users , path_names: { sign_in: "login", sign_out: "logout"}


end