class StatSerializer < ActiveModel::Serializer
  attributes :points, :assists, :rebounds, :blocks, :steals, :threes, :user_id, :game_id


  belongs_to :user
  belongs_to :game
  delegate :team, to: :user

end
