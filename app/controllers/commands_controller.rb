class CommandsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    commands = user.commands.order(created_at: :desc)
    render json: commands
  end

  def create
    user = User.find(params[:user_id])
    command = user.commands.create(command_params)

    if command.persisted?
      # Aqui futuramente o Gepetron vai interpretar o comando e agir.
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
