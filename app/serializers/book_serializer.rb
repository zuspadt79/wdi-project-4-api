class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :author, :isbn, :user_id, :status
end
