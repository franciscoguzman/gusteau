class CreateAccountItems < ActiveRecord::Migration
  def change

    create_table :account_items do |t|
      t.integer :account_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :price, :scale => 2
      t.timestamps
    end
  end
end