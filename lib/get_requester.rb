# Write your code here
# require 'net/http'
# require 'open-uri'
# require 'json'

# class GetRequester

#   URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

#   def get_response_body
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end

#   def parse_json
#       programs = JSON.parse(self.get_response_body)
#       programs.collect do |program|
#         program["agency"]
#       end
#     end

# end

# requester = GetRequester.new.get_response_body
# puts requester

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
      end

    def initialize 
        get_requester = GetRequester.new(URL)
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
      request = JSON.parse(self.get_response_body)
    end
end