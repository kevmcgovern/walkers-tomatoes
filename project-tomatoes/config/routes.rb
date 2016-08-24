Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:show, :index]
  resources :users
  resources :reviews, only: [:new, :create, :show]
  resources :stars, only: [:show, :create, :new]
end
