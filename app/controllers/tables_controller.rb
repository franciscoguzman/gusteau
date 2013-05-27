class TablesController < ApplicationController

  def index

    @tables = Table.all

  end
  def show
    @single_table = Table.find(params[:id])
  end
end