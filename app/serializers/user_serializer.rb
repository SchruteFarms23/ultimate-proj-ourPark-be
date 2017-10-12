class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :weight, :height, :home, :image_url
end
