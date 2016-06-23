Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'test', to: 'static_pages#test', as: 'test'
  root 'static_pages#home'
end
