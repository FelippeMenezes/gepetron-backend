user = User.create(name: "Felippe", age: 42)

Message.create(content: "Oi, Gepetron!", sender: "user", response: "Olá, mestre Felippe!", user: user)
Command.create(command_type: "voice", content: "Fala uma piada", status: "pending", user: user)
