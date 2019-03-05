class AddSubtotalToOrderOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :subtotal, :decimal, :precision => 4, :scale => 2
  end
end
