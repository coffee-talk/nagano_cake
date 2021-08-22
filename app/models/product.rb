class Product < ApplicationRecord
  attachment :image
  belongs_to :genre, foreign_key: 'genre_id'
  has_many :cart_items, dependent: :destroy

  def add_tax_price
    (self.price * 1.10).round
  end

end
