class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subtotal, :order_items
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items

end
