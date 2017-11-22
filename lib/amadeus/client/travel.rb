module Amadeus
  class Client
    # A namespaced client for the
    # +/v1/travel+ endpoints
    #
    # Access via the +Amadeus::Client+ object
    #
    #   amadeus = Amadeus::Client.new
    #   amadeus.travel
    #
    class Travel < Amadeus::Client::Base
      # The namespace for the travel analytics APIs:
      #
      #   amadeus.travel.analytics.air_traffics
      #   amadeus.travel.analytics.fare_searches
      #
      def analytics
        Amadeus::Client::Travel::Analytics.new(client)
      end
    end
  end
end