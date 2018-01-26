class Api::UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    if @user
    else
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render json: @user.username
    else
      render json: @user.errors, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end