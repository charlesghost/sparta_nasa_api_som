require 'spec_helper' 

describe 'NeoFeedService' do
	
	context 'requesting information from the Neo feed works correctly' do

		before(:all) do
			@neofeedservice = NasaService.new.neo_feed_service
            @neofeedservice.get_neo_feed
		end

		it 'should respond with an Hash of Results' do
            expect(@neofeedservice.get_neo_feed_results).to be_kind_of Hash
		end

		it 'should repsond with an Hash of Results from Links' do 
            expect(@neofeedservice.get_neo_feed_links).to be_kind_of Hash
		end

		it 'should return a Next String' do 
            expect(@neofeedservice.get_next).to be_a String
		end

		it 'should return a Prev String' do 
            expect(@neofeedservice.get_prev).to be_a String
		end

		it 'should return a Self String' do
		    expect(@neofeedservice.get_self).to be_a String
		end

		it 'should return a Element Count Integer' do
		    expect(@neofeedservice.get_neo_feed_elementcount).to be_a Integer
		end

		it 'should return a Near Earth Objects Hash' do
		    expect(@neofeedservice.get_near_earth_objects).to be_kind_of Hash	
		end

		it 'should return a Near Earth Objects date array' do
			expect(@neofeedservice.get_date).to be_kind_of Array
		end

		it 'should return a Near Earth Objects links Hash' do
            @neofeedservice.get_date_links.each do |h|
            	expect(h).to be_kind_of Hash
            end
		end

		it 'should return a Near Earth Objects links self String' do
			@neofeedservice.get_date_self.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects neo_reference_id String' do
			@neofeedservice.get_neo_reference_id.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects neo name String' do
			@neofeedservice.get_neo_name.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects neo jpl_url String' do
			@neofeedservice.get_neo_nasa_jpl_url.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects neo absolute magnitude Float' do
			@neofeedservice.get_neo_absolute_magnitude_h.each do |h|
            	expect(h).to be_kind_of Float
            end
		end

		it 'should return a Near Earth Objects neo estimated diameter Array' do
			@neofeedservice.get_neo_estimated_diameter.each do |h|
            	expect(h).to be_kind_of Array
            end
		end

		it 'should return a Near Earth Objects neo estimated diameter kilometers Hash' do
			expect(@neofeedservice.get_km).to be_kind_of Hash
		end

		it 'should return a Near Earth Objects neo estimated diameter km min Float' do
			expect(@neofeedservice.get_km_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter km max Float' do
			expect(@neofeedservice.get_km_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter meters Hash' do
			expect(@neofeedservice.get_meters).to be_kind_of Hash
		end

		it 'should return a Near Earth Objects neo estimated diameter meters min Float' do
			expect(@neofeedservice.get_meters_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter meters max Float' do
			expect(@neofeedservice.get_meters_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter miles Hash' do
			expect(@neofeedservice.get_miles).to be_kind_of Hash
		end

		it 'should return a Near Earth Objects neo estimated diameter miles min Float' do
			expect(@neofeedservice.get_miles_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter miles max Float' do
			expect(@neofeedservice.get_miles_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter feet Hash' do
			expect(@neofeedservice.get_feet).to be_kind_of Hash
		end

		it 'should return a Near Earth Objects neo estimated diameter feet min Float' do
			expect(@neofeedservice.get_feet_estimated_diameter_min).to be_kind_of Float
		end

		it 'should return a Near Earth Objects neo estimated diameter feet max Float' do
			expect(@neofeedservice.get_feet_estimated_diameter_max).to be_kind_of Float
		end

		it 'should return a Near Earth Objects is potentially hazardous Boolean' do
			@neofeedservice.get_potentially_hazardous.each do |h|
            	expect(h).to be_truthy.or be_falsy
            end
		end

		it 'should return a Near Earth Objects close approach data Array' do
			@neofeedservice.get_close_approach_info.each do |h|
            	expect(h).to be_kind_of Array
            end
		end

		it 'should return a Near Earth Objects close approach date String' do
		    @neofeedservice.get_close_approach_date.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects epoch date close approach Integer' do
	        @neofeedservice.get_epoch_date.each do |h|
            	expect(h).to be_kind_of Integer
            end
		end

		it 'should return a Near Earth Objects relative velocity Hash' do
            @neofeedservice.get_relative_velocity.each do |h|
            	expect(h).to be_kind_of Hash
            end
		end

		it 'should return a Near Earth Objects velocity km/s String' do
            @neofeedservice.get_km_s.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects velocity km/h String' do
            @neofeedservice.get_km_h.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects velocity mph String' do
            @neofeedservice.get_mph.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects miss distance Hash' do
            @neofeedservice.get_miss_distance.each do |h|
            	expect(h).to be_kind_of Hash
            end
		end

		it 'should return a Near Earth Objects miss distance_astronomical String' do
		    @neofeedservice.get_astronomical.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects miss distance_lunar String' do
            @neofeedservice.get_lunar.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects miss distance_kilometers String' do
			@neofeedservice.get_kilometers.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects miss distance_miles as a string' do
			@neofeedservice.get_distance_miles.each do |h|
            	expect(h).to be_kind_of String
            end
		end

		it 'should return a Near Earth Objects orbiting body as a string' do
			@neofeedservice.get_orbiting_body.each do |h|
            	expect(h).to be_kind_of String
            end
		end 
	end 
end