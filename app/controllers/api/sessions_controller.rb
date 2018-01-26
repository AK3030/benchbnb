class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user
      login(@user)
      render json: "logged in :)"
    else
      render json: "Invalid credentials", status: 404
    end
  end

  def destroy
    if logged_in?
      logout
      render json: {}
    else
      render json: "No one is logged in", status: 404
    end
  end

end
