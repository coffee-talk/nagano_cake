class Admins::ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admins_products_path
  end

  def show
  end

  def edit
  end

  private
  def product_params
    params.require(:product).permit(:name, :introduction, :image, :genre_id, :price, :is_active)
  end

end
