Rails.application.routes.draw do
  devise_for :users
  resources :diets
  root to: "diets#index"
  resources :users, only: [:edit, :update]
end
