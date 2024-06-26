Rails.application.routes.draw do
  root to: "pages#home"
  get "boats/my_boats", to: "boats#my_boats"
  get "bookings/my_bookings", to: "bookings#my_bookings"
  resources :boats do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, except: [:create, :new]
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
