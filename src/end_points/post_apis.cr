require "../core_api"

module Telegram
  module PostApis
    include CoreApi

    def send_message(chat_id : String | Int64, content : String,
                     optional_params : NamedTuple = NamedTuple.new) : JSON::Any
      hash = {chat_id: chat_id, text: content}.merge(optional_params)

      http_post("sendMessage", hash)
    end
  end
end
