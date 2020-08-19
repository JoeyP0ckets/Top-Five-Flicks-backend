Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :top_fives
      resources :reviews
      resources :watchlist_movies
      resources :watchlists
      resources :users 
      post '/users/login', to: 'users#login'
    end 
  end
end
