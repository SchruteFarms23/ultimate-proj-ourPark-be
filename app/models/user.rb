class User < ApplicationRecord
  has_secure_password
  belongs_to :park, optional: true
  has_many :stats
  belongs_to :team, optional:true
  delegate :game, :to => :team
  # has_many :games, through: :teams

end
