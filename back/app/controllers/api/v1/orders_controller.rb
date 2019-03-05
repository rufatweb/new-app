require 'pry'
module Api
  module V1
class OrdersController < ApplicationController

before_action :authorized

def index

end

def create

  order = Order.create(order_params)
  current_user = order.user
  order_items  = current_user.user_items.map do |user_item|
      OrderItem.create(order_id: order.id, item_id: user_item.item.id, quantity: user_item.quantity)
   end



  render json: { order: order,  order_items: order_items}

end


def show

end


private

def order_params
  params.require(:order).permit(:user_id, :subtotal)
end


    end
  end
end
