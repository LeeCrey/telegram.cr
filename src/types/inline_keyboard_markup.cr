# https://core.telegram.org/bots/api#inlinekeyboardmarkup

require "./inline_keyboard_button"

class InlineKeyboardMarkup
  JSON.mapping(
    inline_keyboard: Array(InlineKeyboardButton)
  )
end
