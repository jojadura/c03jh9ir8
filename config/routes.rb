Rails.application.routes.draw do


  resources :actors , only: [:index,:new] 
  post '/actors', to: 'actors#create'

end
