class RenameAccountItemToOrderItem < ActiveRecord::Migration
  def up
    rename_table :account_items, :order_items
  end

  def down
    rename_table :order_items, :account_items
  end
end
