# https://core.telegram.org/bots/api#birthdate

class Birthdate
  JSON.mapping(
    day: Int32,
    month: Int32,
    year: Int32?,
  )
end
