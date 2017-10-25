class UserSerializer < ActiveModel::Serializer
attributes :id, :name, :email, :password_digest, :weight, :height, :home, :stats, :image_url

belongs_to :park
has_many :stats
delegate :game, to: :team
belongs_to :team
# has_many :games, through: :teams
end
