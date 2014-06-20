class SessionsController < ApplicationController


  def create
      @user = User.find_by(email: params[:user][:email])
      p params
      if @user && @user.authenticate(params[:user][:password])
        log_user_in(@user)
        redirect_to drinks_path
      end
  end

  def destroy
    log_user_out
    redirect_to root_path
  end
end