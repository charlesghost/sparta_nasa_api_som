require 'httparty'
require 'json'

class NeoLookupService
	include HTTParty

	base_uri 'https://api.nasa.gov'

	def initialize
		@api_key = 'SiRbFhwllRoiUXtKs1wbb1PuXiWXz0BEui6zb5Cu'
	end

	def get_neo_lookup(id)
		JSON.parse(self.class.get("/neo/rest/v1/neo/#{id}?&api_key=#{@api_key}").body)
	end

end

lookup = NeoLookupService.new

puts lookup.get_neo_lookup('3542519')

