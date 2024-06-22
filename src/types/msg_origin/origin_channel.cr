# https://core.telegram.org/bots/api#messageoriginchannel

class OriginChannel
  JSON.mapping(
    type: String,
    date: Int64,
    chat: Chat,
    message_id: Int64,
    author_signature: String?,
  )
end
