# https://core.telegram.org/bots/api#chatboostsourcepremium

require "../user"

class SourcePremium
  JSON.mapping(
    source: String,
    user: User,
  )
end
