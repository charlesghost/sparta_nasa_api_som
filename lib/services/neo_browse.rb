require 'httparty'
require 'json'
require 'dotenv'

class NeoBrowseService
	include HTTParty

	base_uri 'https://api.nasa.gov/neo/rest/v1/neo/browse?'

	Dotenv.load

	def get_neo_browse
		@neo_browse_data = JSON.parse(self.class.get("&api_key=#{ENV['API_KEY']}").body)
	end

	def get_neo_browse_results
		@neo_browse_data
	end 

	def get_neo_browse_links
		@neo_browse_data['links']
	end

	def get_next
		get_neo_browse_links['next']
	end

	def get_self
		get_neo_browse_links['self']
	end

	def get_neo_browse_page
		@neo_browse_data['page']
	end

	def get_size
		get_neo_browse_page['size']
	end

	def get_total_elements
		get_neo_browse_page['total_elements']
	end

	def get_total_pages
		get_neo_browse_page['total_pages']
	end

	def get_number
		get_neo_browse_page['number']
	end

	def get_near_earth_objects
		@neo_browse_data['near_earth_objects']
	end

	def get_links
		links = []
		get_near_earth_objects.each do |h|
			links << h['links']
		end
		links
	end

	def get_links_self
		links_self = []
		get_links.each do |h|
			links_self << h['self']
		end
		links_self
	end

	def get_neo_reference_id
		id = []
		get_near_earth_objects.each do |h|
			id << h['neo_reference_id']
		end
		id
	end

	def get_neo_name
		neo_name = []
		get_near_earth_objects.each do |h|
			neo_name << h['name']
		end
		neo_name
	end

	def get_neo_nasa_jpl_url
		nasa_jpl_url = []
		get_near_earth_objects.each do |h|
			nasa_jpl_url << h['nasa_jpl_url']
		end
		nasa_jpl_url
	end

	def get_neo_absolute_magnitude_h
		neo_magnitude = []
		get_near_earth_objects.each do |h|
			neo_magnitude << h['absolute_magnitude_h']
		end
		neo_magnitude
	end

	def get_neo_estimated_diameter
		neo_est_diameter = []
		get_near_earth_objects.each do |h|
			neo_est_diameter << h['estimated_diameter']
		end
		neo_est_diameter
	end

	def get_km
		km = []
		get_neo_estimated_diameter.each do |h|
			km << h['kilometers']
		end
		km
	end

	def get_km_estimated_diameter_min
		km_min = []
		get_km.each do |h|
			km_min << h['estimated_diameter_min']
		end
		km_min
	end

	def get_km_estimated_diameter_max
		km_max = []
		get_km.each do |h|
			km_max << h['estimated_diameter_max']
		end
		km_max
	end

	def get_meters
		m = []
		get_neo_estimated_diameter.each do |h|
			m << h['meters']
		end
		m
	end

	def get_meters_estimated_diameter_min
		m_min = []
		get_meters.each do |h|
			m_min << h['estimated_diameter_min']
		end
		m_min
	end

	def get_meters_estimated_diameter_max
		m_max = []
		get_meters.each do |h|
			m_max << h['estimated_diameter_max']
		end
		m_max
	end

	def get_miles
		miles = []
		get_neo_estimated_diameter.each do |h|
			miles << h['miles']
		end
		miles
	end

	def get_miles_estimated_diameter_min
		miles_min = []
		get_miles.each do |h|
			miles_min << h['estimated_diameter_min']
		end
		miles_min
	end

	def get_miles_estimated_diameter_max
		miles_max = []
		get_miles.each do |h|
			miles_max << h['estimated_diameter_max']
		end
		miles_max
	end

	def get_feet
		feet = []
		get_neo_estimated_diameter.each do |h|
			feet << h['feet']
		end
		feet
	end

	def get_feet_estimated_diameter_min
		feet_min = []
		get_feet.each do |h|
			feet_min << h['estimated_diameter_min']
		end
		feet_min
	end

	def get_feet_estimated_diameter_max
		feet_max = []
		get_feet.each do |h|
			feet_max << h['estimated_diameter_max']
		end
		feet_max
	end

	def get_potentially_hazardous
		hazard = []
		get_near_earth_objects.each do |h|
			hazard << h['is_potentially_hazardous_asteroid']
		end
		hazard
	end

	def get_close_approach_data
		approach_data = []
		get_near_earth_objects.each do |h|
			approach_data << h['close_approach_data']
		end
		approach_data
	end

	def get_orbital_data
		orbital_data = []
		get_near_earth_objects.each do |h|
			orbital_data << h['orbital_data']
		end
		orbital_data
	end

	def get_orbit_id
		orbit_id = []
		get_orbital_data.each do |h|
			orbit_id << h['orbit_id']
		end
		orbit_id
	end

	def get_orbit_determin_date
		orbit_date = []
		get_orbital_data.each do |h|
			orbit_date << h['orbit_determination_date']
		end
		orbit_date
	end

	def get_orbit_uncertainty
		orbit_unc = []
		get_orbital_data.each do |h|
			orbit_unc << h['orbit_uncertainty']
		end
		orbit_unc
	end

	def get_orbit_min_intersec
		orbit_min_int = []
		get_orbital_data.each do |h|
			orbit_min_int << h['minimum_orbit_intersection']
		end
		orbit_min_int
	end

	def get_jupiter_tisserand_inv
		jupiter_tiss = []
		get_orbital_data.each do |h|
			jupiter_tiss << h['jupiter_tisserand_invariant']
		end
		jupiter_tiss
	end

	def get_epoch
		epoch = []
		get_orbital_data.each do |h|
			epoch << h['epoch_osculation']
		end
		epoch
	end

	def get_eccentricity
		eccentricity = []
		get_orbital_data.each do |h|
			eccentricity << h['eccentricity']
		end
		eccentricity
	end

	def get_semi_major_axis
		axis = []
		get_orbital_data.each do |h|
			axis << h['semi_major_axis']
		end
		axis
	end

	def get_inclination
		inclination = []
		get_orbital_data.each do |h|
			inclination << h['inclination']
		end
		inclination
	end

	def get_ascending_node_long
		node_long = []
		get_orbital_data.each do |h|
			node_long << h['ascending_node_longitude']
		end
		node_long
	end

	def get_orbital_period
		orbital_period = []
		get_orbital_data.each do |h|
			orbital_period << h['orbital_period']
		end
		orbital_period
	end

	def get_perihelion_distance
		peri_distance = []
		get_orbital_data.each do |h|
			peri_distance << h['perihelion_distance']
		end
		peri_distance
	end

	def get_perihelion_argument
		peri_arg = []
		get_orbital_data.each do |h|
			peri_arg << h['perihelion_argument']
		end
		peri_arg
	end

	def get_aphelion_distance
		aph_distance = []
		get_orbital_data.each do |h|
			aph_distance << h['aphelion_distance']
		end
		aph_distance
	end

	def get_perihelion_time
		per_time = []
		get_orbital_data.each do |h|
			per_time << h['perihelion_time']
		end
		per_time
	end

	def get_mean_anomaly
		anomaly = []
		get_orbital_data.each do |h|
			anomaly << h['mean_anomaly']
		end
		anomaly
	end

	def get_mean_motion
		mean_motion = []
		get_orbital_data.each do |h|
			mean_motion << h['mean_motion']
		end
		mean_motion
	end

	def get_equinox
		equinox = []
		get_orbital_data.each do |h|
			equinox << h['equinox']
		end
		equinox
	end

end

