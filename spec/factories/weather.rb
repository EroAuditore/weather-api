FactoryBot.define do
    factory :weather do
      #association :location
      #location
      date { "2022/10/09" }
      temperature { [42.3, 54.1, 54.1, 54.1, 54.1, 40.1,
        	      40.1, 39.4, 40.1, 43.1, 45.8, 48.6,
        	      50.5, 52.1, 53.4, 54.1, 54.0, 52.2,
        	      49.2, 47.1, 45.7, 44.7, 44.1, 43.2]}
      
  
      trait :with_location do
        after(:create) do |location|
          create(:location, location)
        end
      end
     
    end
  end
  