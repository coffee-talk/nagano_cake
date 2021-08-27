class Admins::OrderDetailsController < ApplicationController

  # def update
  #   ordered_product = OrderedProduct.find(params[:id])
  #   ordered_product.update(order_product_params)
  #   redirect_back(fallback_location: root_path)
  # end

  def update
    @ordered_product = OrderedProduct.find(params[:id])
    @ordered_product.update(order_product_params)
    # @ordered_product.making_status == "製作中"
    @ordered_product.order.update(status: '製作中')
        # redirect_to admins_order_path(@ordered_product.order) and return
      # elsif @ordered_product.making_status == "3"
      #   @ordered_product.order.update(status: '発送準備中')
      #   redirect_to admins_order_path(@ordered_product.order)
      # else
    # redirect_to admins_order_path(@ordered_product.order) and return
    # end

    redirect_to admins_order_path(@ordered_product.order) and return
  end

private
 def order_product_params
    params.require(:ordered_product).permit(:making_status)
 end

end
