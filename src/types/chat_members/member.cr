# https://core.telegram.org/bots/api#chatmembermember

class MemberMember
  JSON.mapping(
    status: String,
    user: User
  )
end
