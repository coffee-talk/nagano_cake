class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
     @order = Order.new
     @orders = Order.page(params[:page]).per(10)
     @ordered_product = @order.ordered_products
  end
end