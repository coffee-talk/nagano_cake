class Admins::OrderDetailsController < ApplicationController

  # def update
  #   ordered_product = OrderedProduct.find(params[:id])
  #   ordered_product.update(order_product_params)
  #   redirect_back(fallback_location: root_path)
  # end

  def update
    @ordered_product = OrderedProduct.find(params[:id])#id取得して全情報得る
    @ordered_product.update(order_product_params)
    if @ordered_product.making_status == 2
      @ordered_product.order.update(status: '製作中')
      redirect_to admins_order_path(@ordered_product.order)
    elsif @ordered_product.making_status == 3
      making_status_value = true
      @ordered_product.order.ordered_products.each do |ordered_product|
      if ordered_product.making_status != 3
          making_status_value = false
      end
      end
      if making_status_value == true
      @ordered_product.order.update(status: '発送準備中')
      end
      redirect_to admins_order_path(@ordered_product.order)
    else
      redirect_to admins_order_path(@ordered_product.order)
    end
  end

private
 def order_product_params
    params.require(:ordered_product).permit(:making_status)
 end

end
