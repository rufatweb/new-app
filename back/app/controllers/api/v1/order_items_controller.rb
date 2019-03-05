require "pry"
module Api
  module V1
class OrderItemsController < ApplicationController

  def create
  binding.pry
    order_item = OrderItem.create(order_item_params)
    item = Item.find(order_item.item_id)
      render { order_item: order_item, item: item}

  end






  def order_item_params
    params.require(:order_item).permit(:order_id, :item_id, :quantity)
  end
  end
 end
end
