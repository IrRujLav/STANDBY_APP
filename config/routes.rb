Rails.application.routes.draw do
  devise_for :users
  root to: "events#home"
  get "up" => "rails/health#show", as: :rails_health_check


  resources :venues
  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings
end
