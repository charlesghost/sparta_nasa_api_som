require 'httparty'
require 'json'

class NeoLookupService
	include HTTParty

	base_uri 'https://api.nasa.gov'

	def initialize
		@api_key = 'SiRbFhwllRoiUXtKs1wbb1PuXiWXz0BEui6zb5Cu'
	end

	def get_neo_lookup(id)
		@neo_lookup_data = JSON.parse(self.class.get("/neo/rest/v1/neo/#{id}?&api_key=#{@api_key}").body)
	end

	def get_neo_lookup_result
        @neo_lookup_data
	end

	def get_neo_lookup_links
		@neo_lookup_data['links']
	end

	def get_self
		get_neo_lookup_links['self']
	end

	def get_neo_reference_id
		get_neo_lookup_result['neo_reference_id']
	end

	def get_name
		get_neo_lookup_result['name']
	end

	def get_nasa_jpl_url
		get_neo_lookup_result['nasa_jpl_url']
	end

	def get_absolute_magnitude_h
		get_neo_lookup_result['absolute_magnitude_h']
	end

	def get_estimated_diameter_all
		get_neo_lookup_result['estimated_diameter']
	end

	def get_km
		get_estimated_diameter_all['kilometers']
	end

	def get_km_estimated_diameter_min
		get_km['estimated_diameter_min']
	end

	def get_km_estimated_diameter_max
		get_km['estimated_diameter_max']
	end

	def get_meters
		get_estimated_diameter_all['meters']
	end

	def get_meters_estimated_diameter_min
		get_meters['estimated_diameter_min']
	end

	def get_meters_estimated_diameter_max
		get_meters['estimated_diameter_max']
	end

	def get_miles
		get_estimated_diameter_all['miles']
	end

	def get_miles_estimated_diameter_min
		get_miles['estimated_diameter_min']
	end

	def get_miles_estimated_diameter_max
		get_miles['estimated_diameter_max']
	end

	def get_feet
		get_estimated_diameter_all['feet']
	end

	def get_feet_estimated_diameter_min
		get_feet['estimated_diameter_min']
	end

	def get_feet_estimated_diameter_max
		get_feet['estimated_diameter_max']
	end

	def get_potentially_hazardous
		get_neo_lookup_result['is_potentially_hazardous_asteroid']
	end

	def get_close_approach_info
		get_neo_lookup_result['close_approach_data']
	end

	def get_close_approach_date
		approach_date = []
		get_close_approach_info.each do |h|
			approach_date << h['close_approach_date']
		end
		approach_date
	end

	def get_epoch_date
		epoch = []
		get_close_approach_info.each do |h|
			epoch << h['epoch_date_close_approach']
		end
		epoch
	end

	def get_relative_velocity
		velocity = []
		get_close_approach_info.each do |h|
			velocity << h['relative_velocity']
		end
		velocity
	end

	def get_km_s
		km_s = []
		get_relative_velocity.each do |h|
			km_s << h['kilometers_per_second']
		end
		km_s
	end

	def get_km_h
		km_h = []
		get_relative_velocity.each do |h|
			km_h << h['kilometers_per_hour']
		end
		km_h
	end

	def get_mph
		mph = []
		get_relative_velocity.each do |h|
			mph << h['miles_per_hour']
		end
		mph
	end

	def get_miss_distance
		miss_distance = []
		get_close_approach_info.each do |h|
			miss_distance << h['miss_distance']
		end
		miss_distance
	end

	def get_astronomical
		astronomical = []
		get_miss_distance.each do |h|
			astronomical << h['astronomical']
		end
		astronomical
	end

	def get_lunar
		lunar = []
		get_miss_distance.each do |h|
			lunar << h['lunar']
		end
		lunar
	end

	def get_kilometers
		km = []
		get_miss_distance.each do |h|
			km << h['kilometers']
		end
		km
	end

	def get_distance_miles
		miles = []
		get_miss_distance.each do |h|
			miles << h['miles']
		end
		miles
	end

	def get_orbiting_body
		orbit_body = []
		get_close_approach_info.each do |h|
			orbit_body << h['orbiting_body']
		end
		orbit_body
	end

end


