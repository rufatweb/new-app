class UserItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item, :quantity
end
