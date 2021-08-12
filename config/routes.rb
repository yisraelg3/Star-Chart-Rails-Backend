Rails.application.routes.draw do
  resources :studentgoals, only: [:create, :destroy, :update]
  resources :goals, only: [:create]
  resources :students, only: [:create]
  post "/login", to: "teachers#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
