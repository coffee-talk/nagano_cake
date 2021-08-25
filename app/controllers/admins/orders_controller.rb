class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def show
    @order = Order.find(params[:id])
    @customer = Customer.find(params[:id])
    @ordered_products = OrderedProduct.find(params[:id])
  end
end
