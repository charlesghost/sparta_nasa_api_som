require 'spec_helper' 

describe 'NeoFeedService' do
	
	context 'requesting information from the Neo feed works correctly' do

		before(:all) do
			@neofeedservice = NasaService.new.neo_feed_service
            @neofeedservice.get_neo_feed('2011-10-5','2011-10-7')
		end

		it 'should respond with an Hash of Results' do
            expect(@neofeedservice.get_neo_results).to be_kind_of Hash
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
		    expect(@neofeedservice.get_neo_near_earth_objects).to be_kind_of Hash	
		end

		it 'should return a Near Earth Objects date array' do
			expect(@neofeedservice.get_date).to be_kind_of Array
		end

		it 'should return a Near Earth Objects links Hash' do
	        pending
		end

		it 'should return a Near Earth Objects links self String' do
			pending
		end

		it 'should return a Near Earth Objects neo_reference_id String' do
			pending
		end

		it 'should return a Near Earth Objects neo name String' do
			pending
		end

		it 'should return a Near Earth Objects neo jpl_url String' do
			pending
		end

		it 'should return a Near Earth Objects neo absolute magnitude Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter Array' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter kilometers Hash' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter km min Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter km max Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter meters Hash' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter meters min Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter meters max Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter miles Hash' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter miles min Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter miles max Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter feet Hash' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter feet min Float' do
			pending
		end

		it 'should return a Near Earth Objects neo estimated diameter feet max Float' do
			pending
		end

		it 'should return a Near Earth Objects is potentially hazardous Boolean' do
			pending
		end

		it 'should return a Near Earth Objects close approach data Array' do
			pending
		end

		it 'should return a Near Earth Objects close approach date String' do
		    pending
		end

		it 'should return a Near Earth Objects epoch date close approach Integer' do
	        pending
		end

		it 'should return a Near Earth Objects relative velocity Hash' do
            pending
		end

		it 'should return a Near Earth Objects velocity km/s String' do
            pending
		end

		it 'should return a Near Earth Objects velocity km/h String' do
            pending
		end

		it 'should return a Near Earth Objects velocity mph String' do
            pending
		end

		it 'should return a Near Earth Objects miss distance Hash' do
            pending
		end

		it 'should return a Near Earth Objects miss distance_astronomical String' do
		    pending
		end

		it 'should return a Near Earth Objects miss distance_lunar String' do
            pending
		end

		it 'should return a Near Earth Objects miss distance_kilometers String' do
			pending
		end

		it 'should return a Near Earth Objects miss distance_miles as a string' do
			pending
		end

		it 'should return a Near Earth Objects orbiting body as a string' do
			pending
		end 
	end 
end