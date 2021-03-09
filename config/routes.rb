Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/results', to: 'pages#results', as: :results
  resources :planets do
    resources :bookings, only: [:new, :create]
  end

end
