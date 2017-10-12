class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :lat, :long, :borough
end
