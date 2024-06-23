# telegram.cr

Is a lightweigth Crystal wrapper for [Telegram Bot API](https://core.telegram.org/bots/api).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     telegram:
       github: LeeCrey/telegram
   ```

2. Run `shards install`

## Usage

```crystal
require "telegram"

token = "place-your-bot's-token-here"
bot = Telegram::Client.new(token)

me = bot.me

puts "id: #{me.id}, username: #{me.username}"
```

In the above case `bot.me` returns [User](./src/types/user.cr) object. For more please read Telegram bot api.

## Getting Updates

There are two ways to get update from Telegram Server.

- polling
- webhook

```crystal
require "telegram"

token = "place-your-bot\'s-token-here"
bot = Telegram::Client.new(token)

updates = bot.updates
```

_NB:_ The default number of updates to be retrieved is _10_, but you can add yours like.

```crystal
updates = bot.updates(limit: 80)
```

Here 80 shows, 80 updates to be retrieved. Max limit is 100. You can also limit type of updates!.

```crystal
up_dates = ["message", "channel_post"]

updates = bot.updates(limit: 80, type: up_dates)
```

In the above case bot will retrive 80 updates and only looks message and channel post notifications.

If you wanna create specific purpose bot, limiting type of request would be better!.

## Echo server

```crystal
require "telegram"

token = "place-your-bot's-token-here"
bot = Telegram::Client.new(token)

bot.do_polling do
  bot.updates.each do |update|
    if update.is_message?
      message = update.message
      if message.text_msg?
        chat = message.chat
        bot.send_message(chat.id, message.text)
      end
    end
  end
end
```

## Contributing

1. [Fork](https://github.com/LeeCrey/telegram/fork) it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

#### Discussion Group On Telegram

[Telegram group](https://t.me/crystal_lang_telegram_bot_api)

## Contributors

- [Solomon Boloshe](https://github.com/LeeCrey) - creator and maintainer

## License

The library is available as open source under the terms of the [GPLv3+](https://gnu.org/licenses/gpl.html).
