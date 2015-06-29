module Rawscsi
  module SearchHelpers
    class ResultsHash
      def initialize(response)    
        @response = response
      end

      def build
        OpenStruct.new(
          results: @response["hits"]["hit"].map {|h| h["fields"].merge({_id: h["id"]})},
          found: @response["hits"]["found"],
          start: @response["hits"]["start"]
        )
      end
    end
  end
end

