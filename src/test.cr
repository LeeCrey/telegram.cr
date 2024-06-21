require "./telegram"

token = "7289552306:AAHdFtmNtZS-D4ZTtwi1bF8TBenBVjGyjQY"
chat_id = 5812837731

bot = Telegram::Client.new(token)

params = {protect_content: true}

# puts bot.send_message(chat_id, "hello test", NamedTuple.new)
# puts tg.send_message(chat_id, "hello test")
puts bot.me.first_name
