class User < ApplicationRecord
  has_many :user_items
  has_many :orders
  has_many :order_items
  has_many :items, through: :user_items
  has_secure_password

end
