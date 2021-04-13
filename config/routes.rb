Rails.application.routes.draw do
  devise_for :users
  root to: "application_data#index"
  resources :application_data, only: [:index, :new, :create, :destroy]
  resources :application_data do
    collection do
      get "operator_info"
    end
  end
end
