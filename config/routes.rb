Rails.application.routes.draw do
  resources :vacations
  root "users#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  resources :users

  resources :transactions

end
