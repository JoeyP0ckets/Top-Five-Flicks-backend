class Api::V1::TopFivesController < ApplicationController
  before_action :find_top_five, only: [:show, :update, :destroy]
  
  def index
    top_fives = TopFive.all 
    render json: top_fives
  end

  def show
    render json: @top_five
  end

  def create
    # byebug
    top_five = TopFive.new(top_five_params)
    if top_five.save
      render json: top_five
    end
  end

  def update
    @top_five.update!(top_five_params)
    render json: @top_five
  end

  def destroy
    
    @top_five.destroy
  end

  private

  def find_top_five
    @top_five = TopFive.find_by(id: params[:id])
  end

  def top_five_params
    params.require(:top_five).permit(:category, :titleOne, :titleTwo, :titleThree, :titleFour, :titleFive, :user_id)
  end
end
