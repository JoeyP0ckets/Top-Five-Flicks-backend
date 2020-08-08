class Api::V1::ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :update, :destroy]

  def index
    reviews = Review.all 
    render json: reviews 
  end

  def show
    render json: @review 
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review
  end

  def update 
    @review.update!(review_params)
    render json: @review
  end

  def destroy
    @review.destroy
  end

  private

  def find_review 
    @review = Review.find_by(id: params[:id])
  end

  def review_params
    params.permit(:imdb_id, :title, :year, :directing, :acting, :cinematography, :art_direction, :soundtrack, :rating)
  end
end
