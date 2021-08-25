class Public::OrdersController < ApplicationController

  def index
    @orders = Order.all
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
    @address_option = params[:order][:address_option]

    @order =Order.new
    @order.payment_method = params[:order][:payment_method]
    @order.carriage = 800
    if @address_option == "0"
      @order.address = current_customer.address
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.first_name
    elsif @address_option == "1"
      # @saved_address = Receiver.find_by(order_params[:order_address])
      # @saved_address = Receiver.find_by(id: params[:order][:order_address])
      @receiver = Receiver.find(params[:order][:order_address])
      @order.address = @receiver.address
      @order.postal_code = @receiver.postal_code
      @order.name = @receiver.name

    elsif @address_option == "2"

      @order.postal_code = params[:order][:postal_code]
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
    end
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.carriage = 800
    @order.status = 0
    if @order.save
    redirect_to root_path
    else 
    redirect_to cart_items_path
    end
  end

  def complete
  end

  private
    def order_params
      params.require(:order).permit(:postal_code, :address, :name, :payment_method, :total_payment)
    end

end