Rails.application.routes.draw do
  resources :visitors
  root to: 'visitors#new'

  gem 'sinatra', :require => nil

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


end
