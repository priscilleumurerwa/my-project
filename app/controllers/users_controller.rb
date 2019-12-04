class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :destroy]
  def index
    if current_user.admin=="true"
      @users = User.all
    else
      redirect_to grooms_path, notice: 'you are not allowed to view others users'
    end
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: 'User deleted'
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
