module Rawscsi
  module SearchHelpers
    class ResultsHash
      def initialize(response)    
        @response = response
      end

      def build
        @response["hits"]["hit"].map {|h| h["fields"].merge({_id: h["id"], _meta: h})}
      end
    end
  end
end

