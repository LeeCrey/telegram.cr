require "crest"
require "json"
require "json_mapping"

module Telegram
  module CoreApi
    @@base_uri = "https://api.telegram.org/bot"
    @@file_uri = "https://api.telegram.org/file/bot" # to download files

    def http_get(action : String, params : NamedTuple = NamedTuple.new) : JSON::Any
      JSON.parse(Crest.get(final_end_point(action), params.to_h).body)
    end

    def http_post(action : String, params : NamedTuple) : JSON::Any
      JSON.parse(Crest.post(final_end_point(action), params.to_h).body)
    end

    private def final_end_point(action : String) : String
      "#{@@base_uri}#{@token}/#{action}"
    end
  end
end
