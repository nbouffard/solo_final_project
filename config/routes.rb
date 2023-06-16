Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events do
    resources :bookings, only: %i[new create]
  end
  resources :recipes do
    resources :reviews, only: %i[new create]
  end
  resources :users, only: :show do
    resources :reviews, only: %i[new create]
  end
  resources :bookings, only: :destroy
end
