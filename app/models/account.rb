class Account < ActiveRecord::Base
  belongs_to :table
  has_many :account_items
  attr_accessible :table, :table_id, :closed_at, :id

  def update_total
    total = 0
    account_items.each { |ai| total += (ai.price * ai.quantity) }
    self.total = total
    save
  end

end

