class AccountItemsController < ApplicationController

  def create

  end

  def search_products
    if params[:term]
      product_list = Product.where("name like '#{params[:term]}%'")
    else
      product_list = Product.all
    end
    list = product_list.map { |p| Hash[ :value => p.name, :label => p.name, :price => p.price, :id => p.id ] }
    render :json => list
  end

end
