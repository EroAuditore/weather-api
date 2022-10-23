class Weather < ApplicationRecord
    has_one :location
    scope :by_latlon, ->(lat = 0, lon =0) { joins(:location).where('lat = ? and lon = ?', lat, lon) }
end
