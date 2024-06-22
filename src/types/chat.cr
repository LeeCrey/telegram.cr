# https://core.telegram.org/bots/api#chat

class Chat
  JSON.mapping(
    id: Int64,
    type: String,
    title: String?,
    username: String?,
    first_name: String?,
    last_name: String?,
    is_forum: Bool?
  )
end
