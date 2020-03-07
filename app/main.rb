require "telegram/bot"
require "./lib/bot_logic.rb"

token = "1051702702:AAF2AqS4MA6XP0JbGpCsnUXWdSaPgX0sNJM"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/start"
      list = Languages.programming
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to my book store please select a book you want to read for today!\n #{list}\n If you want press /suggest so I can suggest a book for you!")
    when "/book1"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/test.pdf", "file/pdf"))
    when "/book2"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/test.pdf", "file/pdf"))
    when "/book3"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/test.pdf", "file/pdf"))
    when "/suggest"
      hint = Languages.suggest
      bot.api.send_message(chat_id: message.chat.id, text: "You can start with this one #{hint}")
    end
  end
end
