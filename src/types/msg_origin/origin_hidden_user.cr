# https://core.telegram.org/bots/api#messageoriginhiddenuser

class OriginHidden
  JSON.mapping(
    type: String,
    date: Int64,
    sender_user_name: String
  )
end
