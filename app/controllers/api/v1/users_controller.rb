class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    json_users = UserSerializer.new(@users).serialized_json
    render json: json_users, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      user_json = UserSerializer.new(@user).serialized_json
      render json: user_json, status: :created
    else
      response = {
        error: @user.errors.full_messages
      }
      render json: response, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
