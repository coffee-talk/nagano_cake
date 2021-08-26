class Admins::OrderDetailsController < ApplicationController

  def update
    ordered_product = OrderedProduct.find(params[:id])
    ordered_product.update(order_product_params)
    redirect_back(fallback_location: root_path)
  end

private
 def order_product_params
    params.require(:ordered_product).permit(:making_status)
 end

end
