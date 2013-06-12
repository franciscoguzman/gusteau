class AccountsController < ApplicationController

  def index

    @accounts = Account.all

  end
  def show

    @account = Account.find(params[:id])

  end

  def new
    @table = Table.find(params[:table_id])
    @account = Account.new(:table_id => @table.id)
  end

  def create
    @account = Account.new(:table_id => params[:table_id])
    if @account.save
      Table.find(params[:table_id]).update_attribute :status, 'In Service'
      redirect_to table_accounts_path('hjdsakhjkdk')
    end
  end

  def edit
    @account = Account.find(params[:id])

  end


end