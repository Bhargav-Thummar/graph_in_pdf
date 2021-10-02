Rails.application.routes.draw do

  root "continents_populations#index"
  
  resources :continents_populations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
