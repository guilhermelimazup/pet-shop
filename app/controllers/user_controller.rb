class UserController < ApplicationController

  def new
  end
  
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    User.save(@user)
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