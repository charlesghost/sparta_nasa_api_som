require 'spec_helper' 

describe 'NeoBrowseService' do 

	context 'requesting information from Neo Browse works correctly' do

		before(:all) do 
			@neobrowseservice = NasaService.new.neo_browse_service
			@neobrowseservice.get_neo_browse
		end 

		it 'should respond with an Hash of results' do 
			expect(@neobrowseservice.get_neo_browse_results).to be_kind_of Hash
		end 

		it 'Links should respond with an Hash of Results' do
            expect(@neobrowseservice.get_neo_browse_links).to be_kind_of Hash
		end

		it 'should return Next as a String' do
			expect(@neobrowseservice.get_next).to be_kind_of String
		end

		it 'should return Self as a String' do
			expect(@neobrowseservice.get_self).to be_kind_of String
		end

		it 'should return Page with an Hash of results' do
			expect(@neobrowseservice.get_neo_browse_page).to be_kind_of Hash
		end

		it 'should return Page size as an Integer' do
			expect(@neobrowseservice.get_size).to be_kind_of Integer
		end

		it 'should return Page total elements as an Integer' do
			expect(@neobrowseservice.get_total_elements).to be_kind_of Integer
		end

		it 'should return Page total pages as an Integer' do
            expect(@neobrowseservice.get_total_pages).to be_kind_of Integer
		end

		it 'should return Page number as an Integer' do
			expect(@neobrowseservice.get_number).to be_kind_of Integer
		end

		it 'should return Near Earth Objects as an Array of results' do
			expect(@neobrowseservice.get_near_earth_objects).to be_kind_of Array
		end

		it 'should return Neo Earth Objects links as a Hash of results' do
			@neobrowseservice.get_links.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects links self as a String' do
			@neobrowseservice.get_links_self.each do |h|
				expect(h).to be_a String
			end
		end

		it 'should return Near Earth Objects neo_reference_id as a String' do
			@neobrowseservice.get_neo_reference_id.each do |h|
				expect(h).to be_a String
			end
		end

		it 'should return Near Earth Objects neo name as a String' do
            @neobrowseservice.get_neo_name.each do |h|
            	expect(h).to be_a String
            end
		end

		it 'should return Near Earth Objects neo jpl_url as a String' do
			@neobrowseservice.get_neo_nasa_jpl_url.each do |h|
				expect(h).to be_a String
			end
		end

		it 'should return Near Earth Objects neo absolute magnitude as Float' do
			@neobrowseservice.get_neo_absolute_magnitude_h.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter as a Hash' do
			@neobrowseservice.get_neo_estimated_diameter.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects neo estimated diameter kilometers as a Hash' do
			@neobrowseservice.get_km.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects neo estimated diameter km min as Float' do
			@neobrowseservice.get_km_estimated_diameter_min.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter km max as Float' do
			@neobrowseservice.get_km_estimated_diameter_max.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter meters as a Hash' do
			@neobrowseservice.get_meters.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects neo estimated diameter meters min as a Float' do
			@neobrowseservice.get_meters_estimated_diameter_min.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter meters max as a Float' do
			@neobrowseservice.get_meters_estimated_diameter_max.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter miles as a Hash' do
			@neobrowseservice.get_miles.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects neo estimated diameter miles min as a Float' do
			@neobrowseservice.get_miles_estimated_diameter_min.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter miles max as a Float' do
			@neobrowseservice.get_miles_estimated_diameter_max.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter feet as a Hash' do
			@neobrowseservice.get_feet.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects neo estimated diameter feet min as a Float' do
			@neobrowseservice.get_feet_estimated_diameter_min.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects neo estimated diameter feet max as a Float' do
			@neobrowseservice.get_feet_estimated_diameter_max.each do |h|
				expect(h).to be_kind_of Float
			end
		end

		it 'should return Near Earth Objects is potentially hazardous to be a boolean value' do
			@neobrowseservice.get_potentially_hazardous.each do |h|
				expect(h).to be_truthy.or be_falsy
			end
		end

		it 'should return Near Earth Objects close approach data as an Array' do
			@neobrowseservice.get_close_approach_data.each do |h|
				expect(h).to be_kind_of Array
			end
		end

		it 'should return Near Earth Objects orbital data as a Hash of results' do
			@neobrowseservice.get_orbital_data.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return Near Earth Objects orbital id as a String' do
			@neobrowseservice.get_orbit_id.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects orbital determination date as a String' do
			@neobrowseservice.get_orbit_determin_date.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects orbital uncertainty as a String' do
			@neobrowseservice.get_orbit_uncertainty.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects orbit minimun intersection as a String' do
			@neobrowseservice.get_orbit_min_intersec.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects jupiter tisserand invariant as a String' do
			@neobrowseservice.get_jupiter_tisserand_inv.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects epoch_osculation as a String' do
			@neobrowseservice.get_epoch.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects eccentricity as a String' do
			@neobrowseservice.get_eccentricity.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects semi_major_axis as a String' do
			@neobrowseservice.get_semi_major_axis.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects inclination as a String' do
			@neobrowseservice.get_inclination.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects ascending_node_longitude as a String' do
			@neobrowseservice.get_ascending_node_long.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects orbital period as a String' do
			@neobrowseservice.get_orbital_period.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects perihelion_distance as a String' do
			@neobrowseservice.get_perihelion_distance.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects perihelion_argument as a String' do
			@neobrowseservice.get_perihelion_argument.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects aphelion_distance as a String' do
			@neobrowseservice.get_aphelion_distance.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects perihelion_time as a String' do
			@neobrowseservice.get_perihelion_time.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects mean_anomaly as a String' do
			@neobrowseservice.get_mean_anomaly.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects mean_motion as a String' do
			@neobrowseservice.get_mean_motion.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return Near Earth Objects equinox as a String' do
			@neobrowseservice.get_equinox.each do |h|
				expect(h).to be_kind_of String
			end
		end
	end 
end  