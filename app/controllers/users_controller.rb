class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def destroy
    begin
       @user = User.find(params[:id])
    rescue
    end
    if @user && @user.destroy
      flash[:notice] = "You have been terminated!"
    else
      flash[:notice] = "Sorry, we could not delete you"
    end
    redirect_to users_path
  end
end
