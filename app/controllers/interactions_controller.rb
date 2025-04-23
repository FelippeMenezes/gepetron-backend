class InteractionsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    input = params[:message]

    response = GepetronResponseService.new(user, input).call

    render json: { response: response }, status: :ok
  end
end
