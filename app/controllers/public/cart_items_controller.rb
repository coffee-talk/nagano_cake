class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_customer.cart_items.all
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
    @cart_items = current_customer.cart_items.all
    # @cart_items = current_customer.cart_items
    @cart_items.destroy_all
    redirect_to cart_items_path
    # redirect_back(fallback_location: root_path)
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_items = current_customer.cart_items.all
    @cart_item.customer_id = current_customer.id
    @cart_item.product_id = params[:cart_item][:product_id].to_i

    @cart_items.each do |cart_item|
    if cart_item.product_id == @cart_item.product_id
       new_amount = cart_item.amount + @cart_item.amount
       cart_item.update_attribute(:amount, new_amount)
       @cart_item.delete
    end
  end

    @cart_item.save
    redirect_to cart_items_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:product_id, :customer_id, :amount)
  end

end
