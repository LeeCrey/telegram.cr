# https://core.telegram.org/bots/api#chatmemberowner

class MemberOwner
  JSON.mapping(
    status : String?,
    user : User,
    is_anonymous : Boolean,
    custom_title String?
  )
end
