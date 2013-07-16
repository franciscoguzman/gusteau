class OrdersController < ApplicationController

  def index

    @orders = Order.where(:closed_at => nil)

  end
  def show

    @order = Order.find(params[:id])

    @order_items = @order.order_items
    @order_item = OrderItem.new

  end

  def new
    @order = Order.new(:table_id => params[:table_id])
    if  @order.save
        Table.find(params[:table_id]).update_attribute :status, 'En Servicio'
        redirect_to order_path(@order.id)
    end
  end

  def update
    order_params = params[:order]
    @order = Order.find params[:id]
    @order.table_id = order_params[:table_id]
    if @order.save
      redirect_to orders_path
    end

    #@order.update_attribute :table_id, order_params[:table_id]

  end

  def edit
    @order = Order.find params[:id]

  end

  def checkout
      @order = Order.find params[:id]
      @order_items = @order.order_items
  end

  def close
    order = Order.find params[:id]

    order_items = params[:order][:order_items_attributes]
    order_items.each do |index, values|
      order_item = OrderItem.find values[:id]
      order_item.quantity = values[:quantity]
      order_item.price = values[:price]
      if order_item.valid?
        order_item.save
      else
        redirect_to order_path(order.id), :error => 'No se pudo cerrar la cuenta'
      end
    end

    order.discount = params[:order][:discount]
    order.total -= order.discount
    order.closed_at = Time.now
    if order.save
      redirect_to receipt_order_path(order.id), :layout => nil
    else
      redirect_to order_path(order.id), :error => 'No se pudo cerrar la cuenta'
    end
  end

  def receipt
    @order = Order.find params[:id]
    @order_items = @order.order_items
    render layout: "checkout"

  end

  def cancel
    order = Order.find params[:id]
    if order.order_items.present?
      redirect_to order_path(order.id), :notice => 'No se puede cancelar la cuenta; tiene elementos'
    else
      order.destroy
      redirect_to orders_path, :notice => 'Cuenta cancelada'
    end
  end

end