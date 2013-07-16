class TablesController < ApplicationController

  def index

    @tables = Table.order('name').all

  end

  def show
    @table = Table.find(params[:id])
    # Find orders for this table that are open
    @order = Order.where(:table_id => @table.id, :closed_at => nil).first
    @order_items = @order.order_items if @order
    @order_item = OrderItem.new
  end
end