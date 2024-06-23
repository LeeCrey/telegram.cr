# https://core.telegram.org/bots/api#chatjoinrequest

require "./chat"
require "./user"
require "./chat_invite_link"

class ChatJoinRequest
  JSON.mapping(
    chat: Chat,
    # from: User,
    user_chat_id: Int64,
    date: Int64,
    bio: String?,
    invite_link: ChatInviteLink?
  )
end
