class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :author, :isbn
end
