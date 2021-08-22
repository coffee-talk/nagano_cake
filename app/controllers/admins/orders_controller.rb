class Admins::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @customer = Customer.find(params[:id])
    @ordered_products = Ordered_product.find(params[:id])
  end
end
