# https://core.telegram.org/bots/api#chatmemberowner

require "../../user"

class MemberAdmin
  JSON.mapping(
    status: String,
    user: User,
    can_be_edited: Bool,
    is_anonymous: Bool,
    can_manage_chat: Bool,
    can_delete_messages: Bool,
    can_manage_video_chats: Bool,
    can_restrict_members: Bool,
    can_promote_members: Bool,
    can_change_info: Bool,
    can_invite_users: Bool,
    can_post_stories: Bool,
    can_edit_stories: Bool,
    can_delete_stories: Bool,
    can_post_messages: Bool?,
    can_edit_messages: Bool?,
    can_pin_messages: Bool?,
    can_manage_topics: Bool?,
    custom_title: String?,
  )
end
