class AccountItem < ActiveRecord::Base
  belongs_to :account
  belongs_to :product
  attr_accessible :account_id, :product_id, :quantity, :price
end