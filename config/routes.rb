Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users, only: [:create, :index, :show, :edit, :update]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"

  resources :avatars, only: [:create, :show, :index]
  resources :jobs
  resources :events, only: [:create, :index, :show, :destroy]

end
