# https://core.telegram.org/bots/api#chatmemberowner

require "../user"

class MemberOwner
  JSON.mapping(
    status: String?,
    user: User,
    is_anonymous: Bool,
    custom_title: String?
  )
end
