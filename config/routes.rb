Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :venues, only: [:index]
  # resources :events, only: [:index, :show] do
  #   resources :bookings, only: [:new, :create, :edit, :update]
  # end
end
