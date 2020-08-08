class Api::V1::TopFivesController < ApplicationController
  before_action :find_top_five

  def index
      alltopfives = TopFive.all 
      render json: alltopfives
  end

  def show
    render json: @top_five
  end

  private

  def find_top_five
    @top_five = TopFive.find_by(id: params[:id])
  end
end
