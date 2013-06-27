class AccountItem < ActiveRecord::Base
  belongs_to :account
  belongs_to :product
  attr_accessible :account_id, :product_id, :quantity, :price

  scope :grouped_items, lambda {|account_id| group('product_id').where(:account_id => account_id)}

end