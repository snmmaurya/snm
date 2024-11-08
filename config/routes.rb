Rails.application.routes.draw do
  root "api/v1/data#index"

  namespace :api do
    namespace :v1 do
      resources :data do
        collection do
          get :exception
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest


  require 'sidekiq/web'

  Sidekiq::Web.use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == Rails.application.credentials.dig(:SIDEKIQ, :SIDEKIQ_USERNAME) && password == Rails.application.credentials.dig(:SIDEKIQ, :SIDEKIQ_PASSWORD)
  end

  Rails.application.routes.draw do
    mount Sidekiq::Web => '/sidekiq'
  end
  # Defines the root path route ("/")
  # root "posts#index"

  # Route Globbing
  get 'photos/*other', to: 'application#not_found'
  get '*unmatched_route', to: 'application#not_found'
end
