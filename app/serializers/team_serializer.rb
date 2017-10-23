class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :users
  has_many :users
  belongs_to :game
  has_many :stats, through: :users
end
