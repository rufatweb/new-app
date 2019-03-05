class UpdateItemAndSubtotal < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :price, :integer, default: 0
    change_column :orders, :subtotal, :integer, default: 0
  end
end
