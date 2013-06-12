class Account < ActiveRecord::Base
  belongs_to :Table

  attr_accessible :table_id, :closed_at, :id

end

