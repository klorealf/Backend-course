Rails.application.routes.draw do

  #dyanmic route for authentication providers
  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  get 'test', to: 'static_pages#test', as: 'test'
  root 'static_pages#home'
end
