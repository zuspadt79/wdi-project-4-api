class UserSerializer < ActiveModel::Serializer
  has_many :books
  attributes :id, :username, :email, :password_digest, :image
end
