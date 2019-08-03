class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    json_users = UserSerializer.new(@users).serialized_json
    render json: json_users, status: :ok
  end

end
