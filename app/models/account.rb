class Account < ActiveRecord::Base
  belongs_to :table
  has_many :account_items
  attr_accessible :table, :table_id, :closed_at, :id
  accepts_nested_attributes_for :account_items

  after_save :release_table, :if => :closed_at
  before_destroy :release_table


  def update_total
    total = 0
    account_items.each { |ai| total += (ai.price * ai.quantity) }
    self.total = total
    save
  end

  def release_table
    table.update_attribute(:status, nil)
  end

end

