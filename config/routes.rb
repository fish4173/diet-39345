Rails.application.routes.draw do
  devise_for :users
  resources :diets
  root to: "diets#index"

end
