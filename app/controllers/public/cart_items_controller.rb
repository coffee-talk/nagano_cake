class Public::CartItemsController < ApplicationController
  
  def index
    @cart_itmes = current_customer.cart_items
    # 現在の顧客のカートアイテムを取得する
    # 顧客はたくさんのProductを持つ
    # カートはProductに属する
    # amountはcart_itmesの中にあるから
  end 
  
  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_back(fallback_location: root_path)
  end 
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_back(fallback_location: root_path)
  end 
  
  def all_destroy
    @cart_items = current_customer.cart_items
    @cart_items.destroy
    redirect_back(fallback_location: root_path)
  end 
  
  def create
    @cart_items.update
    redirect_to orders_path
  end 
  
  private
  
  def cart_item_params 
    params.require(:cart_item).permit(:prodct_id, :customer_id, :amount)
  end
  
end
