class OrderedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  # after_update :update_making_status

  # def update_making_status
    # if @ordered_product.making_status == 2 #binding.pryすると中身がintegerだった
    #   @ordered_product.order.update(status: '製作中')
    #   redirect_to admins_order_path(@ordered_product.order)
    # elsif @ordered_product.making_status == 3 && @order_product.making_status
    #   #全部のmaking_statusが製作完了になれば配送準備中に切り替えるにはどうしたらいいか？？
    #   # すべての注文されている製作ステータスが全部３なら、注文ステータスを変える
    #   @ordered_product.order.update(status: '発送準備中')
    #   redirect_to admins_order_path(@ordered_product.order) and return # 戻り値を返すreturnメゾット
    # else
    #   redirect_to admins_order_path(@ordered_product.order) and return
    # end
  # end

  enum status: {製作不可:0, 製作待ち:1, 製作中:2, 製作完了:3}
      # 消費税を加えた商品価格
    def add_tax_price
        (self.price * 1.10).round
    end


end
