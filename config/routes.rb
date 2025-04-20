Rails.application.routes.draw do
  # Routes para mensagens
  get    "/users/:user_id/messages", to: "messages#index"
  post   "/users/:user_id/messages", to: "messages#create"

  # Routes para comandos
  get    "/users/:user_id/commands", to: "commands#index"
  post   "/users/:user_id/commands", to: "commands#create"
end
