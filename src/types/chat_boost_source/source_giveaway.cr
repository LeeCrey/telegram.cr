# https://core.telegram.org/bots/api#chatboostsourcegiveaway

require "../user"

class SourceGiveaway
  JSON.mapping(
    source: String,
    giveaway_message_id: Int64,
    user: User?,
    is_unclaimed: Bool?
  )
end
