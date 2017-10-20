class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :lat, :long, :borough
  has_many :users
  has_many :games
end
