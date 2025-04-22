class CommandsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    render json: user.commands.order(created_at: :desc)
  end

  def create
    user = User.find(params[:user_id])
    command = user.commands.new(command_params)

    if command.save
      render json: command, status: :created
    else
      render json: { errors: command.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def command_params
    params.require(:command).permit(:command_type, :content, :status)
  end
end
