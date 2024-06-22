# https://core.telegram.org/bots/api#photosize

class PhotoSize
  JSON.mapping(
    file_id: String,
    file_unique_id: String,
    width: Int32,
    height: Int32,
    file_size: Int32,
  )
end
