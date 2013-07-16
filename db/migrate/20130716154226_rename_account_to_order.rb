class RenameAccountToOrder < ActiveRecord::Migration
  def up
    rename_table :accounts, :orders
  end

  def down
    rename_table :orders, :accounts
  end
end
