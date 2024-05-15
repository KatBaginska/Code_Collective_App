Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :events do
    resources :bookings
  end

  resources :bookings
  resources :user, only: [:show]
end
