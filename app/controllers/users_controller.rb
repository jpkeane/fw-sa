class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    authorize @user
  end
end
