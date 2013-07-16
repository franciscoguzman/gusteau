class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :order_id, :product_id, :quantity, :price
  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :product_id, presence: true

  after_save :update_order_total

  def update_order_total
    order.update_total
  end

end