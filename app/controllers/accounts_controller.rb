class AccountsController < ApplicationController

  def index

    @accounts = Account.where(:closed_at => nil)

  end
  def show

    @account = Account.find(params[:id])

    @account_items = @account.account_items
    @account_item = AccountItem.new

  end

  def new

    @account = Account.new(:table_id => params[:table_id])
    if  @account.save
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

  def close
    account = Account.find params[:id]

    account_items = params[:account][:account_items_attributes]
    account_items.each do |index, values|
      account_item = AccountItem.find values[:id]
      account_item.quantity = values[:quantity]
      account_item.price = values[:price]
      if account_item.valid?
        account_item.save
      else
        redirect_to account_path(account.id), :error => 'No se pudo cerrar la cuenta'
      end
    end

    account.discount = params[:account][:discount]
    account.total -= account.discount
    account.closed_at = Time.now
    if account.save
      redirect_to receipt_account_path(account.id), :layout => nil
    else
      redirect_to account_path(account.id), :error => 'No se pudo cerrar la cuenta'
    end
  end

  def receipt
    @account = Account.find params[:id]
    @account_items = @account.account_items
  end

end