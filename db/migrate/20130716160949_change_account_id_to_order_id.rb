class ChangeAccountIdToOrderId < ActiveRecord::Migration
  def up
    rename_column :order_items, :account_id, :order_id
  end

  def down
    rename_column :order_items, :order_id, :account_id
  end
end
