class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :destroy]
  def index
    @users = User.all
  end

  def show
  end
  def destroy
    @user = User.find(params[:id])
  end

  private
  def set_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'User deleted'
  end
end
