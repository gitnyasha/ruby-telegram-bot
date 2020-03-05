require "telegram/bot"

token = "1051702702:AAF2AqS4MA6XP0JbGpCsnUXWdSaPgX0sNJM"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/start"
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to my bot")
    end
  end
end
