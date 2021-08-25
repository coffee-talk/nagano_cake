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
    @cart_items = current_customer.cart_items
    @payment_method = params[:order][:payment_method]
    @address_option = params[:order][:address_option]
    if @address_option == "0"
      @my_address = current_customer
    elsif @address_option == "1"
      @saved_address = Receiver.find_by(order_params[:order_address])
    elsif @address_option == "2"
      @new_order = Order.new
      @new_order.postal_code = params[:order][:postal_code]
      @new_order.address = params[:order][:address]
      @new_order.name = params[:order][:name]
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
