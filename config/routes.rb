Rails.application.routes.draw do
  devise_for :users
  root to: "events#home"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :venues, only: [:index, :new, :create, :edit, :update, :delete]
  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
