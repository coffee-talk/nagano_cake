class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to customers_path(@customer)

  end

  def quit
    # 退会確認画面を表示するだけ
  end

  def quit_update
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path(current_customer)
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :phone_number, :email, :is_deleted)
  end
end
