class Public::ProductsController < ApplicationController
  
  def index
    @products = Product.where(is_sale: true).page(params[:page]).per(8)
  end 
  
  def show
    @product = Product.find(params[:id])
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :price, :image)
  end
  
end
