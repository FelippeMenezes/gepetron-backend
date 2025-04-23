Rails.application.routes.draw do
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  put "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  get "/messages", to: "messages#index"
  get "/messages/:id", to: "messages#show"
  post "/messages", to: "messages#create"
  put "/messages/:id", to: "messages#update"
  delete "/messages/:id", to: "messages#destroy"

  get "/commands", to: "commands#index"
  get "/commands/:id", to: "commands#show"
  post "/commands", to: "commands#create"
  put "/commands/:id", to: "commands#update"
  delete "/commands/:id", to: "commands#destroy"

  get "/personalities", to: "personalities#index"
  get "/personalities/:id", to: "personalities#show"
  post "/personalities", to: "personalities#create"
  put "/personalities/:id", to: "personalities#update"
  delete "/personalities/:id", to: "personalities#destroy"

  post "/interact", to: "interactions#create"
end
