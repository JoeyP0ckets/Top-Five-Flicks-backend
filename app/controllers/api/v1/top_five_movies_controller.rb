class Api::V1::TopFiveMoviesController < ApplicationController
  before_action :find_top_five_movie

  def index 
    allmovies = TopFiveMovie.all
    render json: allmovies
  end

  def show
    render json: @top_five_movie
  end

  

  private

  def find_top_five_movie
    @top_five_movie = TopFiveMovie.find_by(id: params[:id])
  end
end
