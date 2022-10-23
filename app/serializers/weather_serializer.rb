class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :date, :temperature
  has_one :location
end
