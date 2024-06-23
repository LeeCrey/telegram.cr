# https://core.telegram.org/bots/api#inlinekeyboardbutton

require "./webapp_info"
require "./login_url"

class InlineKeyboardButton
  JSON.mapping(
    text: String,
    url: String?,
    callback_data: String?,
    switch_inline_query: String?,
    switch_inline_query_current_chat: String?,
    pay: Bool?,
    web_app: WebAppInfo,
    login_url: LoginUrl?
  )
end
