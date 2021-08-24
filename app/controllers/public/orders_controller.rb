class Public::OrdersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @order = Order.new
    @address = current_customer
    @receiver = current_customer.receivers.all
  end

  def comfirm
    @order = Order.new
    @cart_items = current_customer.cart_items
    @payment_method = order_params[:payment_method]
    @address_option = order_params[:address_option]
   if @address_option == 0
    @receiver = order_params[:payment_method]
   end
  end

  def create
     @address_option = order_params[:address_option]
    if @address_option == 0
      @order = Order.new
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.name
    else
    end
  end
  
  def complete
  end

  private
    def order_params
      params.require(:order).permit(:postal_code, :address, :name, :payment_method, :address_option, :order_address)
    end


end
