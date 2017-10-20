class Game < ApplicationRecord
  belongs_to :park
  has_many :teams
  has_many :users, through: :teams
  has_many :stats
end
