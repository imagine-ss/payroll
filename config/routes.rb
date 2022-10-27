Rails.application.routes.draw do
  root "users#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  get "users/complete_profile/:id", to: "users#edit"
  post "users/complete_profile/:id", to: "users#update"

end
