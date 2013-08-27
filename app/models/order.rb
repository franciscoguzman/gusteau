class Order < ActiveRecord::Base
  attr_accessible :discount, :table_id, :total
end
