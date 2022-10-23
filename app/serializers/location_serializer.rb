class LocationSerializer < ActiveModel::Serializer
  attributes :lat, :lon, :city, :state
end
