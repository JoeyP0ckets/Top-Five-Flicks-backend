class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]

  def index
      users = User.all
      render json: users
  end

  def login
      @user = User.find_by(username: params[:username])
      render json: @user
  end
  
  def show
      render json: @user
  end

  def create
    # byebug
    user = User.create(user_params)
      if user.save
      render json: user
     end
  end

  def update
      @user.update!(user_params)
      render json: user
  end
  
  private
  
  def find_user
      @user = User.find_by(id: params[:id])
  end

  def user_params
      params.require(:user).permit(:username, :password)
  end
end
