Rails.application.routes.draw do
  resources :posts

  root "static#home"

  get "/hello/:name", to: "static#hello"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get"/contact", to: "static#contact"
end
