class PersonalitiesController < ApplicationController
  def index
    render json: Personality.all
  end

  def show
    personality = Personality.find(params[:id])
    render json: personality
  end
end
