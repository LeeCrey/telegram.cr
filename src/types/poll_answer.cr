# https://core.telegram.org/bots/api#pollanswer

require "./user"
require "./chat"

class PollAnswer
  JSON.mapping(
    poll_id: String,
    option_ids: Array(Int64),
    user: User?,
    voter_chat: Chat?
  )
end
