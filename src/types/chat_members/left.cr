# https://core.telegram.org/bots/api#chatmemberleft

require "../../user"

class MemberLeft
  JSON.mapping(
    status: String,
    user: User
  )
end
