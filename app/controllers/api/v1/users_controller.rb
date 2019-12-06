class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users.to_json(:include => :scores)
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(username: user_params[:username])
    render json: @user
  end

  def update
    @user = User.find_by(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: { user: @user, message: "User DESTROYYYYYED!" }, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:id, :username)
  end
end
