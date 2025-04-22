class CommandsController < ApplicationController
  def index
    @commands = Command.all
    render json: @commands
  end

  def show
    @command = Command.find(params[:id])
    render json: @command
  end

  def create
    @command = Command.new(command_params)
    if @command.save
      render json: @command, status: :created
    else
      render json: @command.errors, status: :unprocessable_entity
    end
  end

  def update
    @command = Command.find(params[:id])
    if @command.update(command_params)
      render json: @command
    else
      render json: @command.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @command = Command.find(params[:id])
    @command.destroy
    head :no_content
  end

  private

  def command_params
    params.require(:command).permit(:trigger, :action, :user_id)
  end
end
