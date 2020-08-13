class Api::V1::WatchlistMoviesController < ApplicationController
  before_action :find_watchlist_movie, only: [:show, :update, :destroy]
  
  def index
    watchlistmovies = WatchlistMovie.all 
    render json: watchlistmovies
  end

  def show 
    render json: @watchlist_movie
  end

  def create
    watchlistmovie = WatchlistMovie.new(watchlist_movie_params)
      if watchlistmovie.save
        render json: watchlistmovie
      end
  end

  def destroy
    @watchlist_movie.destroy
  end

  private

  def find_watchlist_movie
    @watchlist_movie = WatchlistMovie.find_by(id: params[:id])
  end

  def watchlist_movie_params
    params.require(:watchlist_movie).permit(:imdb_id, :poster, :title, :year, :watchlist_id)
  end


end
