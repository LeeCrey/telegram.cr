# https://core.telegram.org/bots/api#chatmemberbanned

require "../user"

class MemberBanned
  JSON.mapping(
    status: String,
    user: User,
    until_date: Int32
  )
end
