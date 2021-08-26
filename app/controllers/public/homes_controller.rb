class Public::HomesController < ApplicationController

  def top
    @products = Product.limit(8).where(is_active: true).order(" created_at DESC ")
  end

  def about

  end

end
