require 'spec_helper'

describe 'NeoLookupService' do 

	context 'requesting information from Neo lookup works correctly' do

		before(:all) do
			@neolookupservice = NasaService.new.neo_lookup_service
            @neolookupservice.get_neo_lookup('3542519')
		end 

		it 'should respond with an Hash of results' do 
			expect(@neolookupservice.get_neo_lookup_result).to be_kind_of Hash
		end 

		it 'should respond with an hash of results from links' do
            expect(@neolookupservice.get_neo_lookup_links).to be_kind_of Hash
		end 

		it 'should return a self string' do
            expect(@neolookupservice.get_self).to be_kind_of String
		end 

		it 'should return a neo reference id string' do
            expect(@neolookupservice.get_neo_reference_id).to be_kind_of String
		end

		it 'should return a neo name id string' do 
            expect(@neolookupservice.get_name).to be_kind_of String
		end

		it 'should return a neo nasa jpl url string' do 
            expect(@neolookupservice.get_nasa_jpl_url).to be_kind_of String
		end 

		it 'should return a neo absolute magnitude as a float' do
            expect(@neolookupservice.get_absolute_magnitude_h).to be_kind_of Float
		end 

		it 'should return a neo estimated diameter as a hash' do 
            expect(@neolookupservice.get_estimated_diameter_all).to be_kind_of Hash
		end

		it 'should return a neo diameter km as a Hash of results' do
            expect(@neolookupservice.get_km).to be_kind_of Hash
		end

		it 'should return a neo estimated diameter km min as Float' do
			expect(@neolookupservice.get_km_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a neo estimated diameter km max as Float' do
			expect(@neolookupservice.get_km_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a neo estimated diameter meters as a Hash' do
			expect(@neolookupservice.get_meters).to be_kind_of Hash
		end

		it 'should return a neo estimated diameter meters min as a Float' do
			expect(@neolookupservice.get_meters_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a neo estimated diameter meters max as a Float' do
			expect(@neolookupservice.get_meters_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a neo estimated diameter miles as a Hash' do
			expect(@neolookupservice.get_miles).to be_kind_of Hash
		end

		it 'should return a neo estimated diameter miles min as a Float' do
			expect(@neolookupservice.get_miles_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a neo estimated diameter miles max as a Float' do
			expect(@neolookupservice.get_miles_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a neo estimated diameter feet as a Hash' do
			expect(@neolookupservice.get_feet).to be_kind_of Hash
		end

		it 'should return a neo estimated diameter feet min as a Float' do
			expect(@neolookupservice.get_feet_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a neo estimated diameter feet max as a Float' do
			expect(@neolookupservice.get_feet_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a Near Earth Objects is_potentially_hazardous as a boolean' do
			expect(@neolookupservice.get_potentially_hazardous).to be_truthy.or be_falsy
		end

		it 'should return a Near Earth Objects close_approach_date as a Array' do
			expect(@neolookupservice.get_close_approach_info).to be_kind_of Array
		end

		it 'should return a Near Earth Objects close_approach_date as String' do
			@neolookupservice.get_close_approach_date.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects epoch_date_close_approach as an Integer' do
			@neolookupservice.get_epoch_date.each do |h|
				expect(h).to be_kind_of Integer
			end
		end

		it 'should return a Near Earth Objects relative velocity as a Hash' do
			@neolookupservice.get_relative_velocity.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return a Near Earth Objects velocity km/s as a string' do
			@neolookupservice.get_km_s.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects velocity km/h as a string' do
			@neolookupservice.get_km_h.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects velocity mph as a string' do
			@neolookupservice.get_mph.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects miss distance as a Hash' do
			@neolookupservice.get_miss_distance.each do |h|
				expect(h).to be_kind_of Hash
			end
		end

		it 'should return a Near Earth Objects miss distance_astronomical as a string' do
			@neolookupservice.get_astronomical.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects miss distance_lunar as a string' do
			@neolookupservice.get_lunar.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects miss distance_kilometers as a string' do
			@neolookupservice.get_kilometers.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects miss distance_miles as a string' do
			@neolookupservice.get_distance_miles.each do |h|
				expect(h).to be_kind_of String
			end
		end

		it 'should return a Near Earth Objects orbiting body as a string' do
            @neolookupservice.get_orbiting_body.each do |h|
				expect(h).to be_kind_of String
			end
		end
	end 
end