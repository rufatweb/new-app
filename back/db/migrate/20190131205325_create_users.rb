class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, index: true
      t.string :email
      t.string :pasword_digest

      t.timestamps
    end
  end
end
