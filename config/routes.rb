Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/", to: "bmr_calculator#index"
  post '/calculate', to: 'bmr_calculator#calculate'
  root "bmr_calculator#index"
end
