class UsersController < ApplicationController

  def new
  end

  def index

  end

  def create
    @user = User.new(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
