Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users, only: [:create, :index, :show]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"

  resources :avatars, only: [:create]
  resources :jobs, only: [:create, :index, :show, :destroy]
  resources :events, only: [:create, :index, :show, :destroy]

end
