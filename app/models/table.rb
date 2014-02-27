class Table < ActiveRecord::Base
  has_many :orders

  attr_accessible :name, :seats, :status
end
