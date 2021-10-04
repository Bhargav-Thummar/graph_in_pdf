Rails.application.routes.draw do

  root "continents_populations#index"
  
  resources :continents_populations do
    collection do
      get 'generate_report', to: 'continents_populations#generate_report', as: :generate_report, defaults: { format: 'pdf' }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
