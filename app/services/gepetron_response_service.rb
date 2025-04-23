class GepetronResponseService
  def initialize(user, input)
    @user = user
    @input = input
  end

  def call
    # Exemplo simplificado de lógica de resposta
    tone = @user.personalities.last&.tone || "neutro"
    "#{tone.capitalize} resposta para: #{@input}"
  end
end
