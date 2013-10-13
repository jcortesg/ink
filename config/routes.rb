Models::Application.routes.draw do
  
  authenticated :user do
    root :to => 'users#dashboard'
  end
  devise_for :users , path_names: { sign_in: "login", sign_out: "logout"}
  
 scope :module => 'site', :constraints => { :subdomain => /.+/ } do
    root :to =>'sites#show'
    get 'about', to: 'users#show'
    get 'books', to: 'books#index'
    get 'book/:id', to: 'books#show', as: "pictures"
    get "contact", to: 'contact#show'
  end

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