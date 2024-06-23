# https://core.telegram.org/bots/api#inlinequery

require "./location"
require "./user"

class InlineQuery
  JSON.mapping(
    id: String,
    # from: User,
    query: String,
    offset: String,
    chat_type: String?,
    location: Location?,
  )
end
