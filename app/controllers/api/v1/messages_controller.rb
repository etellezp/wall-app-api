class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    json_messages = MessageSerializer.new(@messages).serialized_json
    render json: json_messages, status: :ok
  end

end
