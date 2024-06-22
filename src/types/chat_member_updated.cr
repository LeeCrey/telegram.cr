# https://core.telegram.org/bots/api#chatmemberupdated

require "./chat"
require "./user"
require "./chat_invite_link"
require "./chat_members/admin"
require "./chat_members/banned"
require "./chat_members/left"
require "./chat_members/member"
require "./chat_members/owner"
require "./chat_members/restricted"

class ChatMemberUpdated
  JSON.mapping(
    chat: Chat,
    from: User,
    date: Int64,
    old_chat_member: MemberAdmin | MemberBanned | MemberLeft | MemberMember | MemberOwner | MemberRestricted,
    new_chat_member: MemberAdmin | MemberBanned | MemberLeft | MemberMember | MemberOwner | MemberRestricted,
    invite_link: ChatInviteLink?,
    via_join_request: Bool?,
    via_chat_folder_invite_link: Bool?
  )
end
