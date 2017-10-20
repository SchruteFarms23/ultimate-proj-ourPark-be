class Stat < ApplicationRecord
  belongs_to :user
  belongs_to :game
  delegate :team, to: :user
  

end
