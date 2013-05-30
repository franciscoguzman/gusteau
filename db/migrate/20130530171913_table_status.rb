class TableStatus < ActiveRecord::Migration
  def change
    add_column(:tables,:status,:string,:default =>"Available")

    t.timestamps
  end
end
