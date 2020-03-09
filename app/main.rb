require "telegram/bot"
require "dotenv/load"
require_relative "../lib/bot_logic.rb"

token = ENV["API"]

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/start"
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to my book store please select a book you want to read for today!\n/Ruby\n/Java\n/Php\n If you want press /suggest so I can suggest a book for you!")
    when "/Ruby"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/ruby.pdf", "file/pdf"))
    when "/Java"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/java.pdf", "file/pdf"))
    when "/Php"
      bot.api.send_document(chat_id: message.chat.id, document: Faraday::UploadIO.new("./lib/php.pdf", "file/pdf"))
    when "/suggest"
      hint = Languages.suggest
      bot.api.send_message(chat_id: message.chat.id, text: "You can start with this one #{hint}")
    end
  end
end
