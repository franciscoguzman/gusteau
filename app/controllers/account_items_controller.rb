class AccountItemsController < ApplicationController

  def create

  end

  def search_products
    if params[:term]
      product_list = Product.where("name like '%#{params[:term]}%'")
    else
      product_list = Product.all
    end
    list = product_list.map { |p| Hash[ :id => p.id, :name => p.name, :price => p.price ] }
    render :json => list
  end

end
