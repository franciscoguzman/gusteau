class TablesController < ApplicationController

  def index

    @tables = Table.all

  end

  def show
    @table = Table.find(params[:id])
    # Find accounts for this table that are open
    @account = Account.where(:table_id => @table.id, :closed_at => nil).first
    @account_items = @account.account_items if @account
  end
end