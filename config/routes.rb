Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'events/index'
  get 'events/show'
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :events do
    resources :bookings
    resources :chatrooms, only: :show
  end

  resources :bookings
  resources :users, only: %i[show edit update]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
