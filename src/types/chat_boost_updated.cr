# https://core.telegram.org/bots/api#chatboostupdated

require "./chat"

class ChatBoostUpdated
  JSON.mapping(
    chat: Chat,
    boost: ChatBoost
  )
end
