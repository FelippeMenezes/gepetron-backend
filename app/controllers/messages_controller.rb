class MessagesController < ApplicationController
  before_action :set_user

  def index
    render json: @user.messages
  end

  def create
    message = @user.messages.create(message_params)

    # Simulação de resposta automática simples
    if message.sender == "user"
      message.response = generate_response(message.content)
      message.save
    end

    render json: message
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def message_params
    params.require(:message).permit(:content, :sender)
  end

  def generate_response(content)
    case content.downcase
    when /piada/
      "Por que o programador não gostava do mar? Porque tinha muitos bugs."
    when /nome/
      "Meu nome é Gepetron, prazer!"
    else
      "Não entendi muito bem... pode repetir?"
    end
  end
end
