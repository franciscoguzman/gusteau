class Order < ActiveRecord::Base
  belongs_to :table
  has_many :order_items

  attr_accessible :discount, :table_id, :total, :closed_at, :table
  accepts_nested_attributes_for :order_items

end
