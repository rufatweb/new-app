class UpdateOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :subtotal, :decimal, :precision => 6, :scale => 2
  end
end
