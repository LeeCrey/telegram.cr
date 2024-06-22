# https://core.telegram.org/bots/api#animation

require "./photo_size"

class Animation
  JSON.mapping(
    file_id: String,
    file_unique_id: String,
    width: Int32,
    height: Int32,
    duration: Int32,
    thumbnail: PhotoSize?,
    file_name: String?,
    mime_type: String?,
    file_size: Int32?,
  )
end
