class Public::OrdersController < ApplicationController

  def index

  end

  def show

  end

  def new
    @order = Order.new
    @address = current_customer
    @address1 = current_customer.postal_code
    @receiver = current_customer.receivers.all


  end

  def comfirm

  end

  def complete

  end

  def create

  end

  private
  def order_params
    params.require(:order).permit(:postal_code, :address, :name, :payment_method, :address_option)
  end


end
