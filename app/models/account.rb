class Account < ActiveRecord::Base
  belongs_to :table
  has_many :account_items
  attr_accessible :table_id, :closed_at, :id

end

