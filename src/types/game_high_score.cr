# https://core.telegram.org/bots/api#gamehighscore

require "./user"

class GameHighScore
  JSON.mapping(
    position: Int32,
    user: User,
    score: Int32
  )
end
