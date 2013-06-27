class TablesController < ApplicationController

  def index

    @tables = Table.all

  end

  def show
    @table = Table.find(params[:id])
    # Find accounts for this table that are open
    @account = Account.where(:table_id => @table.id, :closed_at => nil).first

    if @account
      @account_items = AccountItem.grouped_items(@account.id)
      @account_items_sum = @account_items.sum('quantity')
    end

    @account_item = AccountItem.new
  end
end