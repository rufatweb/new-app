class ChangeDefaultValueForUserItemsQuantity < ActiveRecord::Migration[5.2]
  def change
    change_column :user_items, :quantity, :integer, :default => 0
  end
end
