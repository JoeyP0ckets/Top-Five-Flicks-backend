class Api::V1::TopFivesController < ApplicationController
  before_action :find_top_five, only: [:show, :update, :destroy]

  def index
      alltopfives = TopFive.all 
      render json: alltopfives
  end

  def show
    render json: @top_five
  end

  def create
    topfive = TopFive.new(top_five_params)
    if topfive.save
      render json: top_five
    end
  end

  def destroy
    @top_five.destroy
  end

  private

  def find_top_five
    @top_five = TopFive.find_by(id: params[:id])
  end

  def top_five_params
    params.permit(:category)
  end

end
