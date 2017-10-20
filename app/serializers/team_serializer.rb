class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id
  has_many :players
  belongs_to :game
  has_many :stats, through: :players
end
