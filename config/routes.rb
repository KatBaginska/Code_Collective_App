Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'events/index'
  get 'events/show'
  devise_for :users
  root to: "events#index"
 
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
