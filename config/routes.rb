Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :planets do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:index]
end
