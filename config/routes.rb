Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do

      resources :houses

      resources :ghosts, only: [:show, :index, :create, :update]

      resources :users, only: [:create, :index, :show, :destroy] do
        resources :ghosts, only: [:index, :show, :create, :update, :destroy]
      end

  end
  
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
