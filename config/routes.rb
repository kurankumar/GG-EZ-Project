Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :games, only: [:index, :show]
      resources :genres, only: [:index, :show]
      resources :scores, only: [:index, :show]
    end
  end
end
