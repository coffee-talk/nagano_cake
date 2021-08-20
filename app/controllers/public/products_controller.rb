class Public::ProductsController < ApplicationController
  
  def index
    @products = Product.where(is_active: true).page(params[:page]).per(8)
  end 
  
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end
  
  def add_tax_price
    (self.price * 1.10).round
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :price, :image)
  end
  
end
