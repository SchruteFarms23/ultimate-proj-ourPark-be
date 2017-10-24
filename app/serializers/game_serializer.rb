class GameSerializer < ActiveModel::Serializer
  attributes :id, :park_id, :date, :score, :users
  belongs_to :park
  # has_many :users, through: :teams
  has_many :stats
  has_many :teams
end
