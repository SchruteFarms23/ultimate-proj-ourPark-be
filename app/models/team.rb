class Team < ApplicationRecord
  has_many :users
  has_many :stats, through: :users
  belongs_to :game
end
