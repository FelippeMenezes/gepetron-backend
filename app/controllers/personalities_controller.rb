class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
    render json: @personalities
  end

  def show
    @personality = Personality.find(params[:id])
    render json: @personality
  end

  def create
    @personality = Personality.new(personality_params)
    if @personality.save
      render json: @personality, status: :created
    else
      render json: @personality.errors, status: :unprocessable_entity
    end
  end

  def update
    @personality = Personality.find(params[:id])
    if @personality.update(personality_params)
      render json: @personality
    else
      render json: @personality.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @personality = Personality.find(params[:id])
    @personality.destroy
    head :no_content
  end

  private

  def personality_params
    params.require(:personality).permit(:tone, :description, :user_id)
  end
end
