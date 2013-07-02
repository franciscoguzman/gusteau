class AccountsController < ApplicationController

  def index

    @accounts = Account.all

  end
  def show

    @account = Account.find(params[:id])

    @account_items = @account.account_items
    @account_item = AccountItem.new

  end

  def new
    @account = Account.new(:table_id => params[:table_id])
    if @account.save
      Table.find(params[:table_id]).update_attribute :status, 'En Servicio'
      redirect_to account_path(@account.id)
    end
  end

  def update
    account_params = params[:account]
    @account = Account.find params[:id]
    @account.table_id = account_params[:table_id]
    if @account.save
      redirect_to accounts_path
    end

    #@account.update_attribute :table_id, account_params[:table_id]

  end

  def edit
    @account = Account.find params[:id]

  end

  def checkout
      @account = Account.find params[:id]
      @account_items = @account.account_items
  end

end