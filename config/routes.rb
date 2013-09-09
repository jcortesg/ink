Models::Application.routes.draw do
  
  authenticated :user do
    root :to => 'users#dashboard'
  end
  devise_for :users , path_names: { sign_in: "login", sign_out: "logout"}
  match '/' => 'sites#show', :constraints => { :subdomain => /.+/ }
  resources :users, only: [ :show ]


  namespace :akira do
    resources :photographers
    resources :models
    
    resources :users do
      collection do
        get 'dashboard'
      end
      resources :books
      resources :sites
    end
  end

  namespace :home do
    resources :sites
    resources :users, only: [:index, :show ]
  end

  root :to => "home#index"
  


end