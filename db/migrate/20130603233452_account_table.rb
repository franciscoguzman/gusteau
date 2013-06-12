class AccountTable < ActiveRecord::Migration
  def change

    create_table :accounts do |t|

      t.integer   :table_id,    :null => false
      t.datetime  :closed_at


      t.timestamps

    end
  end
end
