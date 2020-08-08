class Api::V1::WatchlistsController < ApplicationController
  before_action :find_watchlist
  
  
  def index
    watchlists = Watchlist.all 
    render json: watchlists
  end

  def show
    render json: @watchlist.to_json(:include => :watchlist_movies)
  end


  private

  def find_watchlist
    @watchlist = Watchlist.find_by(id: params[:id])
  end


end
