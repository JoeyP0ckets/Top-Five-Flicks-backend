class Api::V1::WatchlistMoviesController < ApplicationController

  def index
    watchlistmovies = WatchlistMovie.all 
    render json: watchlistmovies
  end
end
