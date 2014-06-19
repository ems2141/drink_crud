class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.create!(email: params[:user][:email], password: params[:user][:password])
    log_user_in(@user)
    redirect_to drinks_path
  end
end