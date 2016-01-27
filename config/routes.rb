Rails.application.routes.draw do
  root to: 'application#index'

  namespace :api do
    namespace :v1 do
      resources :weighins, only: :index
      get '/update', to: 'fetch#index'
    end
  end
end
