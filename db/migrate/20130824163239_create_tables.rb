class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.string :status
      t.integer :seats

      t.timestamps
    end
  end
end
