Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/users/:id/dashboard', to: 'pages#dashboard', as: :dashboard
  resources :planets do
    resources :bookings, only: [:new, :create]
  end

end
