FactoryBot.define do
    factory :location do
        #association :weather
        weather
        lat { 32.5 }
	    lon { -93.6667 }
	    city { "Shreveport" }
        state { "Louisiana" }
    end
end