# https://core.telegram.org/bots/api#chatmemberrestricted

require "../../user"

class MemberRestricted
  JSON.mapping(
    status: String,
    user: User,
    is_member: Bool,
    can_send_messages: Bool,
    can_send_audios: Bool,
    can_send_documents: Bool,
    can_send_photos: Bool,
    can_send_videos: Bool,
    can_send_video_notes: Bool,
    can_send_voice_notes: Bool,
    can_send_polls: Bool,
    can_send_other_messages: Bool,
    can_add_web_page_previews: Bool,
    can_change_info: Bool,
    can_invite_users: Bool,
    can_pin_messages: Bool,
    can_manage_topics: Bool,
    until_date: Int64,
  )
end
