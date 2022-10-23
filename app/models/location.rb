class Location < ApplicationRecord
    belongs_to :weather
    #scope :by_latlon,  ->(lat, lol) { where ("lat = ?", lat) }
    scope :latlon, ->(lat, lon) { where('lat = ? and lon = ?', lat, lon) }
end
