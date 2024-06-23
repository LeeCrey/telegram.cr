# https://core.telegram.org/bots/api#chatboost

require "./chat_boost_source/source_premium"
require "./chat_boost_source/source_gift_code"

class ChatBoost
  JSON.mapping(
    boost_id: String,
    add_date: Int64,
    expiration_date: Int64,
    source: SourcePremium | SourceGiftCode | SourceGiveaway,
  )
end
