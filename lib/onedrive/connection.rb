require 'faraday'
require 'json'

module Onedrive
  class Connection
    def initialize(token)
      options = { url: 'https://api.onedrive.com/v1.0/' }

      @connection = Faraday.new(options) do |faraday|
        faraday.headers['Authorization'] = "Bearer #{token}"
        faraday.adapter Faraday.default_adapter
      end
    end

    def get(*args)
      # TODO Handle errors
      response = @connection.get(*args)
      parsed_body = JSON.parse(response.body)
    end
  end
end
