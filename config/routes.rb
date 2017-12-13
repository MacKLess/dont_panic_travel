Rails.application.routes.draw do
  # devise_for :users
  root to: 'trips#index'

  resources :trips do
    resources :reviews
  end
end
