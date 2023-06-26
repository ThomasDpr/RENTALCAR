Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :cars, only: %i[index show] do
    resources :bookings, only: [:create]
  end

  resources :users, only: [:show] # Pour voir le profil d'un owner

  resources :bookings, only: [:index] # Pour voir les réservations d'un user connecté

  namespace :owner do
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
    resources :cars
  end
end
