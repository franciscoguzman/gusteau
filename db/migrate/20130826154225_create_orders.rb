class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table_id
      t.decimal :discount
      t.datetime :closed_at
      t.decimal :total

      t.timestamps
    end
  end
end
