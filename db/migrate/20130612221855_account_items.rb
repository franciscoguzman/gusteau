class AccountItems < ActiveRecord::Migration
  def change

    create_table :account_items do |t|
      t.integer :account_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
