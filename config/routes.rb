Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#home"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  resources :listings
  # REST api structure for us
  # routes for listing
  # custom routes here
  # any path that is not defined in the app
  # get "*path", to:"pages#not_found"

  # get "/404", to: "errors#not_found"
end
