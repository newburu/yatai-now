Rails.application.routes.draw do
  # APIはロケールスコープの外に置く
  namespace :api do
    namespace :v1 do
      resources :locations, only: [:create]
      get "map_data", to: "map_data#index"
    end
  end

  # ヘルスチェック
  get "up" => "rails/health#show", as: :rails_health_check

  scope "(:locale)", locale: /en|ja/ do
    # Deviseのルーティング
    devise_for :users

    # 1. 参照者（一般観覧客）向け
    root "map#index"
    get "map", to: "map#index"

    # 2. GPS送信担当者向け
    get "sender", to: "sender#index"

    # 3. 管理者向け
    namespace :admin do
      resource :settings, only: [:edit, :update]
      resources :stalls
      resources :users
      resources :festivals
    end

    # 4. 屋台管理者向け
    namespace :manager do
      resource :stall, only: [:show, :edit, :update]
    end
  end
end
