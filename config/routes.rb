Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do

      resources :houses, only: [:show, :index, :create, :update]

      resources :ghosts, only: [:show, :index, :create, :update]

      resources :users do
        resources :ghosts, only: [:index, :show, :create, :update, :destroy]
        resources :houses, only: [:index, :show, :create, :update, :destroy]
      end

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

    end
  end
  
  

end
