require 'httparty'
require 'json'

class NeoFeedService
	include HTTParty
	
	base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'

	def initialize
		@api_key = 'SiRbFhwllRoiUXtKs1wbb1PuXiWXz0BEui6zb5Cu'
	end

	def get_neo_feed
		today = Time.now.strftime("%Y-%m-%d")
		@neo_feed_data = JSON.parse(self.class.get("start_date=#{today}&end_date=#{today}&api_key=#{@api_key}").body)
	end 

	def get_neo_feed_results
		@neo_feed_data
	end

	def get_neo_feed_links
		@neo_feed_data['links']
	end

	def get_next
		get_neo_feed_links['next']
	end

	def get_prev
		get_neo_feed_links['prev']
	end

	def get_self
		get_neo_feed_links['self']
	end

	def get_neo_feed_elementcount
		@neo_feed_data['element_count']
	end

	def get_near_earth_objects
		@neo_feed_data['near_earth_objects']
	end

	def get_date
		today = Time.now.strftime("%Y-%m-%d")
		get_near_earth_objects[today]
	end

	def get_date_links
		links = []
		get_date.each do |h|
			links << h['links']
		end
		links
	end

	def get_date_self
		self_links = []
		get_date_links.each do |h|
			self_links << h['self']
		end
		self_links
	end

	def get_neo_reference_id
		ref_id = []
		get_date.each do |h|
			ref_id << h['neo_reference_id']
		end
		ref_id
	end

	def get_neo_name
		name = []
		get_date.each do |h|
			name << h['name']
		end
		name
	end

	def get_neo_nasa_jpl_url
		jpl_url = []
		get_date.each do |h|
			jpl_url << h['nasa_jpl_url']
		end
		jpl_url
	end

	def get_neo_absolute_magnitude_h
		magnitude = []
		get_date.each do |h|
			magnitude << h['absolute_magnitude_h']
		end
		magnitude
	end

	def get_neo_estimated_diameter
		diameter = []
		get_date.each do |h|
			diameter = h['estimated_diameter']
		end
		diameter
	end

	def get_km
		get_neo_estimated_diameter['kilometers']
	end

	def get_km_estimated_diameter_min
		get_km['estimated_diameter_min']
	end

	def get_km_estimated_diameter_max
		get_km['estimated_diameter_max']
	end

	def get_meters
		get_neo_estimated_diameter['meters']
	end

	def get_meters_estimated_diameter_min
		get_meters['estimated_diameter_min']
	end

	def get_meters_estimated_diameter_max
		get_meters['estimated_diameter_max']
	end

	def get_miles
		get_neo_estimated_diameter['miles']
	end

	def get_miles_estimated_diameter_min
		get_miles['estimated_diameter_min']
	end

	def get_miles_estimated_diameter_max
		get_miles['estimated_diameter_max']
	end

	def get_feet
		get_neo_estimated_diameter['feet']
	end

	def get_feet_estimated_diameter_min
		get_feet['estimated_diameter_min']
	end

	def get_feet_estimated_diameter_max
		get_feet['estimated_diameter_max']
	end

	def get_potentially_hazardous
		hazard = []
		get_date.each do |h|
			hazard << h['is_potentially_hazardous_asteroid']
		end
		hazard
	end

	def get_close_approach_info
		approach_info = []
		get_date.each do |h|
			approach_info << h['close_approach_data']
		end
		approach_info
	end

	def get_close_approach_date
		approach_date = []
		get_close_approach_info.each do |h|
			approach_date << h[0]['close_approach_date']
		end
		approach_date
	end

	def get_epoch_date
		epoch = []
		get_close_approach_info.each do |h|
			epoch << h[0]['epoch_date_close_approach']
		end
		epoch
	end

	def get_relative_velocity
		velocity = []
		get_close_approach_info.each do |h|
			velocity << h[0]['relative_velocity']
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
			miss_distance << h[0]['miss_distance']
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
		kilometers = []
		get_miss_distance.each do |h|
			kilometers << h['kilometers']
		end
		kilometers
	end

	def get_distance_miles
		d_miles = []
		get_miss_distance.each do |h|
			d_miles << h['miles']
		end
		d_miles
	end

	def get_orbiting_body
		orbit_body = []
		get_close_approach_info.each do |h|
			orbit_body << h[0]['orbiting_body']
		end
		orbit_body
	end

end






