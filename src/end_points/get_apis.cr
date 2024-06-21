require "../core_api"
require "../response_objects/user"

module Telegram
  module GetApis
    include CoreApi

    def me : User
      begin
        User.from_json(http_get("getMe")["result"].to_json)
      rescue ex : Crest::Unauthorized
        raise BotTokenException.new("Invalid Bot Token")
      end
    end

    # Use this method to receive incoming updates using long polling.
    def updates(limit : Int32 = 10, optional_params : NamedTuple = NamedTuple.new)
      hash = {timeout: 0, limit: limit, offset: @last_update}.merge(optional_params)

      http_get("getUpdates", hash)
    end

    def file(file_id : String | Int64)
      http_get("getFile", {file_id: file_id})
    end

    def profile_photos(user_id : Int64 | String,
                       optional_params : NamedTuple = NamedTuple.new)
      hash = optional_params.merge({user_id: user_id})
      http_get("getProfilePhotos", hash)
    end

    def chat_admins(chat_id : String | Int64)
      http_get("getChatAdministrators", {chat_id: chat_id})
    end

    def chat_members_count(chat_id : String | Int64)
      http_get("getChatMemebersCount", {chat_id: chat_id})
    end

    def chat_member(chat_id : String | Int64, user_id : String | Int64)
      hash = {chat_id: chat_id, user_id: user_id}
      http_get("getChatMember", hash)
    end

    def chat(chat_id : String | Int64)
      http_get("getChat", {chat_id: chat_id})
    end

    def my_commands
      begin
        http_get("getMyCommands")
      rescue ex : Crest::Unauthorized
        raise BotTokenException.new("Invalid Bot Token")
      end
    end
  end
end
