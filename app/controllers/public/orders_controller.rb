class Public::OrdersController < ApplicationController

  def index

  end

  def show

  end

  def new
    @order = Order.new
    
  end

  def comfirm

  end

  def complete

  end

  def create

  end

  private
  def order_params
    params.require(:order).permit(:postal_code, :address, :name)
  end


end
