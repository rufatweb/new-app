class AddExpirationToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :expiration, :date
  end
end
