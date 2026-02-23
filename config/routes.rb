Rails.application.routes.draw do
  # API and health check routes should be outside the locale scope
  get "up" => "rails/health#show", as: :rails_health_check
  namespace :api do
    namespace :v1 do
      resources :locations, only: [ :create ]
      get "map_data", to: "map_data#index"
    end
  end

  # Scope all other routes to include the locale
  scope "(:locale)", locale: /en|ja/ do
    get "sender/index"
    get "map", to: "map#index"

    root "map#index"

    get "sender", to: "sender#index"

    devise_for :users, skip: [ :registrations ]
    as :user do
      get "users/edit" => "devise/registrations#edit", as: "edit_user_registration"
      put "users" => "devise/registrations#update", as: "user_registration"
      patch "users" => "devise/registrations#update"
    end

    namespace :admin do
      resource :settings, only: [ :edit, :update ]
      resources :stalls
      resources :users
      resources :festivals
    end

    namespace :manager do
      resource :stall, only: [ :show, :edit, :update ]
    end
  end
end
