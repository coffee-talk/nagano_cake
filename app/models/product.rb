class Product < ApplicationRecord
  attachment :image
  belongs_to :genre, foreign_key: 'genre_id'

  def add_tax_price
    (self.price * 1.10).round
  end

end
