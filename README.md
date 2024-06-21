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

me = bot.get_me

puts "first name: #{me["first_name"]}"
puts "user name: #{me["username"]}"
puts "id: #{me["id"]}"
```

There are two ways to get update from Telegram Server.

- polling
- webhook

## Getting Update s

```ruby
#!/usr/bin/ruby
# frozen_string_literal: true

require 'teleruby'

@token = %q{place-your-bot's-token-here}
@bot = Telegram::Client.new(token: @token)

updates = @bot.get_updates
puts updates.inspect
```

_NB:_ The default number of updates to be retrieved is _10_, but you can add yours like.

```ruby
@bot = Telegram::Client.new(token: @token)

updates = @bot.get_updates(limit: 80)
```

Here 10 shows, 80 updates to be retrieved. Max limit is 100. You can also limit type of updates!.

```ruby
up_dates = ['message', 'channel_post']

@bot = Telegram::Client.new(token: @token)
updates = @bot.get_updates(limit: 80, type: up_dates)
```

In the above case bot will retrive 80 updates and only looks message and channel post notifications.

If you wanna create specific purpose bot, limiting type of request would be better!.

## Echo server

```crystal
require "telegram"

token = "place-your-bot's-token-here"
bot = Telegram::Client.new(token)

bot.do_polling do
  updates = bot.get_updates
  updates.each do |update|
    if update.msg?
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

```

## License

The library is available as open source under the terms of the [GPLv3+](https://gnu.org/licenses/gpl.html).
```
