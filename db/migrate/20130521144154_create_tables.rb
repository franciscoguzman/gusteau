class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string  :name, :null => false
      t.integer :seats
      t.string  :status, :default => nil
      t.integer :parent_id

      t.timestamps
    end
  end
end
