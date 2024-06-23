# https://core.telegram.org/bots/api#chatboostsourcegiftcode

require "../user"

class SourceGiftCode
  JSON.mapping(
    source: String,
    user: User
  )
end
