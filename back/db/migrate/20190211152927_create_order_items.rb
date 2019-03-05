class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, index: true
      t.references :item, index: true
      t.timestamps
    end
  end
end
