class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def show
    @order = Order.find(params[:id])
    @customer = @order.name
    @ordered_products = OrderedProduct.find(params[:id])
  end

  def edit
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admins_order_path(@order)
  end

  private
  def order_params
    params.require(:order).permit(:status)
  end

end
