class OrderedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  enum status: {製作不可:0, 製作待ち:1, 製作中:2, 製作完了:3}
      # 消費税を加えた商品価格
    def add_tax_price
        (self.price * 1.10).round
    end
end
