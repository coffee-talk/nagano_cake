class Admins::HomesController < ApplicationController

  def top
     @order = Order.new
     @orders = Order.page(params[:page]).per(10)
  end

end
