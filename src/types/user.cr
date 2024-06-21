# https://core.telegram.org/bots/api#user
class User
  JSON.mapping(
    id: Int64,
    is_bot: Bool,
    first_name: String,
    last_name: String?,
    username: String,
    language_code: String?,
    is_premium: Bool?,
    added_to_attachment_menu: Bool?,
    can_join_groups: Bool?,
    can_read_all_group_messages: Bool?,
    supports_inline_queries: Bool?,
    can_connect_to_business: Bool?
  )
end
