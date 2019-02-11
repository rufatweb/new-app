class ItemSerializer < ActiveModel::Serializer
  attributes :name, :price, :image, :description
  has_many :users
end
