Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  root to: "application_data#index"
  resources :application_data, only: [:index, :new, :create]
>>>>>>> Stashed changes
end
