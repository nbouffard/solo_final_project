Rails.application.routes.draw do
  devise_for :users do
    resources :reviews, only: %i[new create]
  end
  root to: "pages#home"
  resources :events do
    resources :bookings, only: %i[new create]
  end
  resources :recipes do
    resources :reviews, only: %i[new create]
  end

  resources :bookings, only: :destroy
end
