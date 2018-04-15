require_relative 'services/neo_browse'
require_relative 'services/neo_feed'
require_relative 'services/neo_lookup'


class NasaService

	def neo_browse_service
       NeoBrowseService.new
	end

	def neo_feed_service
       NeoFeedService.new
	end

	def neo_lookup_service
       NeoLookupService.new
	end

end
