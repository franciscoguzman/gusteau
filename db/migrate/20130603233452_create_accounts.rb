class CreateAccounts < ActiveRecord::Migration
  def change

    create_table :accounts do |t|

      t.integer   :table_id,    :null => false
      t.decimal   :total, :scale => 2, :default => 0
      t.decimal   :discount, :scale => 2, :default => 0
      t.decimal   :charged, :scale => 2, :default => 0
      t.datetime  :closed_at
      t.datetime  :paid_at

      t.timestamps

    end
  end
end
