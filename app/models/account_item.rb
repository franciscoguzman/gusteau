class AccountItem < ActiveRecord::Base
  belongs_to :account
  belongs_to :product
  attr_accessible :account_id, :product_id, :quantity, :price
  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :product_id, presence: true

  after_save :update_account_total

  def update_account_total
    account.update_total
  end

end