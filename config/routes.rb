Rails.application.routes.draw do
  
  root "users#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  resources :users

  resources :transactions

  resources :vacations

  get "pending", to: "vacations#pending_requests"

  get "approved", to: "vacations#approved_requests"

  get "cancelled", to: "vacations#cancelled_requests"

end
