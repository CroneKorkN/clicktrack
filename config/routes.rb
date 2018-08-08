Rails.application.routes.draw do
  resources :activities
  resources :buttons
  root to: "buttons#app"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
