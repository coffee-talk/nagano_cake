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
    @carriage = 800
    if @address_option == "0"
      @my_address = current_customer
    elsif @address_option == "1"
      # @saved_address = Receiver.find_by(order_params[:order_address])
      # @saved_address = Receiver.find_by(id: params[:order][:order_address])
      @saved_address = Receiver.find(params[:order][:order_address])
    elsif @address_option == "2"
      @order = Order.new(order_params)
    end
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.carriage = 800
    @order.total_payment


  end

  def complete
  end

  private
    def order_params
      params.require(:order).permit(:postal_code, :address, :name, :payment_method, :total_payment)
    end

end
