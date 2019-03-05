class Item < ApplicationRecord
  has_many :user_items
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :user_items
end
