class Public::HomesController < ApplicationController

  def top
    @products = Product.limit(4)where()order(" created_at DESC ")
  end

  def about

  end

end
