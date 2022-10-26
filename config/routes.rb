Rails.application.routes.draw do
  root "users#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  get "users/complete_profile", to: "users#complete_profile"

end
