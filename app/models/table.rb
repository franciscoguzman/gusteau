class Table < ActiveRecord::Base

  has_many :orders

  attr_accessible :name, :seats, :status

  def current_order
    Order.where(:table_id => id, :closed_at => nil).first
  end

end
