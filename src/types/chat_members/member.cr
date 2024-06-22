# https://core.telegram.org/bots/api#chatmembermember

require "../../user"

class MemberMember
  JSON.mapping(
    status: String,
    user: User
  )
end
