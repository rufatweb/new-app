class UpdateItemPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :price, :decimal, :precision => 4, :scale => 1
  end
end
