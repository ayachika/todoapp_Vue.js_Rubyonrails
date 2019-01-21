Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'home#index'
    get '/about',   to: 'home#index'
    
    namespace :api, format: 'json' do #railsにおけるWebAPIの手法。JSONデータを持ってくるためのルーティングの設定
      resources :tasks, only: [:index, :create, :update]
    end    
end
