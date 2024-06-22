# https://core.telegram.org/bots/api#loginurl

class LoginUrl
  JSON.mapping(
    url: String,
    forward_text: String?,
    bot_username: String?,
    request_write_access: Bool?
  )
end
