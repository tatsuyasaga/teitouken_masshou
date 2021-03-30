Rails.application.routes.draw do
  devise_for :users
  root to: "applivation_data#index"
  resources :application_data, only: [:index]
end
