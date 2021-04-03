Rails.application.routes.draw do
  devise_for :users
  root to: "application_data#index"
  resources :application_data, only: [:index, :new, :create, :destroy]
end
