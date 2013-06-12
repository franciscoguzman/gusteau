class Table < ActiveRecord::Base

  has_many :Accounts

  attr_accessible :name, :seats, :status

end
