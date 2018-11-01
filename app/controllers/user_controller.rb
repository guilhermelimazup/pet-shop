class UserController < ApplicationController
  skip_before_action :authenticate_request
  def new
  end
  
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      render json: @user.errors, status: 422 
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    render json: @user  
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end
end