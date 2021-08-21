class Admins::ProductsController < ApplicationController

  def index
    @product = Product.new
    @products = Product.page(params[:page]).per(10)
  end

  def new
    @product = Product.new
    @genres = Genre.all
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to admins_products_path
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.new
  end

  def edit
    @product = Product.find(params[:id])
    @genres = Genre.all
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to admins_products_path
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :introduction, :image, :price, :is_active, :genre_id)
  end

end
