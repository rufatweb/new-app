class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :quantity, :order_id
  belongs_to :order
  belongs_to :item
end
