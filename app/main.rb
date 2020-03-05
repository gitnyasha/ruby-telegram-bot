require "telegram/bot"

TOKEN = None

with open("../token.txt") as f:
    TOKEN = f.read().strip()

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/start"
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to my bot")
    end
  end
end
