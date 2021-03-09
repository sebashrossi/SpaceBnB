Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/results', to: 'pages#results', as: :results
  resources :planets
end
