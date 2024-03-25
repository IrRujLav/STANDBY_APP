Rails.application.routes.draw do
  devise_for :users
  root to: "events#home"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :venues, only: [:index]
  resources :events, only: [:index, :show, :edit, :update, :destroy]
end
