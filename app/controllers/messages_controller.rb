class MessagesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    render json: user.messages.order(created_at: :desc)
  end

  def create
    user = User.find(params[:user_id])
    message = user.messages.new(message_params)

    if message.save
      render json: message, status: :created
    else
      render json: { errors: message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :sender, :response)
  end
end
