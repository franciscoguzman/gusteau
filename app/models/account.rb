class Account < ActiveRecord::Base
  belongs_to :table
  has_many :account_items
  attr_accessible :table_id, :closed_at, :id

  def total
    total = 0
    account_items.each { |ai| total += (ai.price * ai.quantity) }
    total
  end

end

