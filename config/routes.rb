Rails.application.routes.draw do


  #resources :actors , only: [:index,:new] 
  get '/actors', to: 'actors#index'
  get '/actors/new', to: 'actors#new' as "crear actor"
  post '/actors', to: 'actors#create'

end
