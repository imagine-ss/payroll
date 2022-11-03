Rails.application.routes.draw do
  resources :appraisals
  
  root "users#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  resources :users

  post "users/new", to: "users#create"

  resources :transactions

  post "transactions/new", to: "transactions#create"

  resources :vacations

  get "pending", to: "vacations#pending_requests"

  get "approved", to: "vacations#approved_requests"

  get "cancelled", to: "vacations#cancelled_requests"

end
