class Admins::OrderDetailsController < ApplicationController

  # def update
  #   ordered_product = OrderedProduct.find(params[:id])
  #   ordered_product.update(order_product_params)
  #   redirect_back(fallback_location: root_path)
  # end

  def update
    @ordered_product = OrderedProduct.find(params[:id])#id取得して全情報得る
    @ordered_product.update(order_product_params)
    if @ordered_product.making_status == 2 #binding.pryすると中身がintegerだった
      @ordered_product.order.update(status: '製作中')
      redirect_to admins_order_path(@ordered_product.order)
    elsif @ordered_product.making_status.count == 3 && @order_product.making_status.count
      #全部のmaking_statusが製作完了になれば配送準備中に切り替えるにはどうしたらいいか？？
      # すべての注文されている製作ステータスが全部３なら、注文ステータスを変える
      @ordered_product.order.update(status: '発送準備中')
      redirect_to admins_order_path(@ordered_product.order) and return # 戻り値を返すreturnメゾット
    else
      redirect_to admins_order_path(@ordered_product.order) and return
    end
  end

private
 def order_product_params
    params.require(:ordered_product).permit(:making_status)
 end

end
