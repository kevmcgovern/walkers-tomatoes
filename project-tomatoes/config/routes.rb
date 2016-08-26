Rails.application.routes.draw do
  get "search", to: "search#index"

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:show, :index]
  resources :users
  resources :reviews, only: [:new, :create, :show]
  resources :stars, only: [:show, :create, :new]
  root 'home#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end



#   resources :movies, only: :show
