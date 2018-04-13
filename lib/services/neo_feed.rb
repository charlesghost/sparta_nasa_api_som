require 'httparty'
require 'json'

class NeoFeedService
	include HTTParty
    
	base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'

	def initialize
		@api_key = 'SiRbFhwllRoiUXtKs1wbb1PuXiWXz0BEui6zb5Cu'
	end

	def get_neo_feed(start_date,end_date)
       JSON.parse(self.class.get("start_date=#{start_date}&end_date=#{end_date}&api_key=#{@api_key}").body)
	end 

end

feed = NeoFeedService.new

puts feed.get_neo_feed('2011-10-5','2011-10-7')