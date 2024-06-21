require "./end_points/*"

module Telegram
  # Raise when chat_id, and user_id are incorrect,
  class ChatIdException < Exception; end

  # Raise when bot token is incorrect.
  class BotTokenException < Exception; end

  # Raise when bot has not appropriate admin right in supergroups.
  class PermissionException < Exception; end

  class Client
    include PostApis
    include GetApis

    def initialize(token : String)
      @token = token
      @last_update = 0
    end
  end
end
