# frozen_string_literal: true

Rails.application.routes.draw do
  # default_url_options host: 'http://localhost:3000'
  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      resources :cars, only: %i[index create destroy]

      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end
