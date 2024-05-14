Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Visitor
  resources :events, only: [:index, :show]

  # User - logged in
  resources :events
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :user, only: [:show]
end
