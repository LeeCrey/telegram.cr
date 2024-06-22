# https://core.telegram.org/bots/api#chatinvitelink

require "./user"

class ChatInviteLink
  JSON.mapping(
    invite_link: String,
    creator: User,
    creates_join_request: Bool,
    is_primary: Bool,
    is_revoked: Bool?,
    name: String?,
    expire_date: Int32?,
    member_limit: Int32?,
    pending_join_request_count: Int32?
  )
end
