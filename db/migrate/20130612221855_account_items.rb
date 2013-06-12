class AccountItems < ActiveRecord::Migration
  def change

    create_table :account_items do |t|
      t.string :product
      t.integer :quantity
      t.timestamps
    end
  end
end
