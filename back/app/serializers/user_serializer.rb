class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :user_items, :email
  has_many :items
  has_many :user_items
end
