class Api::V1::ReviewsController < ApplicationController
  before_action :find_review

  def index
    reviews = Review.all 
    render json: reviews 
  end

  def show
    render json: @review 
  end

  private

  def find_review 
    @review = Review.find_by(id: params[:id])
  end
end
