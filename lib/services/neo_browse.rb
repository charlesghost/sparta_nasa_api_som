require 'httparty'
require 'json'

class NeoBrowseService
	include HTTParty

	base_uri 'https://api.nasa.gov/neo/rest/v1/neo/browse?'

	def initialize
		@api_key = 'SiRbFhwllRoiUXtKs1wbb1PuXiWXz0BEui6zb5Cu'
	end

	def get_neo_browse
		JSON.parse(self.class.get("&api_key=#{@api_key}").body)
	end

end

browse = NeoBrowseService.new

puts browse.get_neo_browse