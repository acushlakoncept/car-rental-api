Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      # resources :books, only: %i[index create destroy]

      # post 'authenticate', to: 'authentication#create'
      # post 'register', to: 'users#create'
    end
  end
end
