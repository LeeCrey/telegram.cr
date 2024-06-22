# https://core.telegram.org/bots/api#game

require "./photo_size"
require "./animation"
require "./message_entity"

class Game
  JSON.mapping(
    title: String,
    description: String,
    photo: Array(PhotoSize)?,
    text: String?,
    text_entities: Array(MessageEntity)?,
    animation: Animation?
  )
end
