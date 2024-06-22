# https://core.telegram.org/bots/api#chatphoto

class ChatPhoto
  JSON.mapping(
    small_file_id: String,
    small_file_unique_id: String,
    big_file_id: String,
    big_file_unique_id: String
  )
end
