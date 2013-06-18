class Product < ActiveRecord::Base

  has_many :account_items
  attr_accessible :description, :name, :price

end
