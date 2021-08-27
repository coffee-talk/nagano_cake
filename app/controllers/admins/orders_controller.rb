class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def show
    @order = Order.find(params[:id])
    @customer = @order.name
    @ordered_products = @order.ordered_products
  end

  def edit
  end

  # def update
  #   @order = Order.find(params[:id])
  #   @order.update(order_params)
  #   redirect_to admins_order_path(@order)
  # end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      if @order.status == '入金確認'
      @order.ordered_products.update_all(making_status: 1 )
      redirect_to request.referer
      else
      redirect_to request.referer
      end
    else
      redirect_to root_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:status)
  end

end
