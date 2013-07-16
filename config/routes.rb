Models::Application.routes.draw do
  

  authenticated :user do
    root :to => 'home#index'
  end

  scope :module => 'akira' do
  end


  resources :books


  resources :photographers


  resources :agents


  resources :models

 

  devise_for :users , path_names: { sign_in: "login", sign_out: "logout"}

  resources :users do
     collection do
      get 'register'
    end
  end


  root :to => "home#index"



end