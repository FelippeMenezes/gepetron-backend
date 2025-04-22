Rails.application.routes.draw do
  # Rotas para UsersController
  get  "/users/:id", to: "users#show",   as: "user"
  post "/users",     to: "users#create", as: "create_user"

  # Rotas para MessagesController
  get  "/users/:user_id/messages", to: "messages#index", as: "user_messages"
  post "/users/:user_id/messages", to: "messages#create", as: "create_user_message"

  # Rotas para CommandsController
  get  "/users/:user_id/commands", to: "commands#index", as: "user_commands"
  post "/users/:user_id/commands", to: "commands#create", as: "create_user_command"

  # Rotas para PersonalitiesController
  get "/personalities",     to: "personalities#index", as: "personalities"
  get "/personalities/:id", to: "personalities#show",  as: "personality"
end
