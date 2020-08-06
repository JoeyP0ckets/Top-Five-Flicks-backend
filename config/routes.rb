Rails.application.routes.draw do
  resources :top_five_movies
  resources :top_fives
  resources :reviews
  resources :watchlist_movies
  resources :watchlists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
