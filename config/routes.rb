Rails.application.routes.draw do
  devise_for :users
  root to: "diet#index"
  # root to: "devise#index"
  # root to: "devise/sessions#new"
end
