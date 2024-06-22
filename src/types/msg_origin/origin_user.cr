# https://core.telegram.org/bots/api#messageoriginuser

require "../user"

class OriginUser
  JSON.mapping(
    type: String,
    date: Int64,
    sender_user: User?
  )
end
