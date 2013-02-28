OneWayAir::Application.routes.draw do

  resources :reservations


  get "sign_in" => 'sessions#new', :as => :sign_in
  get "/flights" => 'flights#index'

  post "sessions/create"

  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

  resources :users
  # get "/my_profile" => 'users#show', :as => :user

  root to: 'flights#index'

end
