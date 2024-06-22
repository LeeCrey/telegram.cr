# https://core.telegram.org/bots/api#chatmemberleft

class MemberLeft
  JSON.mapping(
    status : String,
    user : User
  )
end
