class Public::ReceiversController < ApplicationController

  def index
    @receiver = Receiver.new
    @customer = Customer.find(current_customer.id)
    @receivers = @customer.receivers
  end

  def create

    receiver = Receiver.new(receiver_params)
    receiver.customer_id = current_customer.id
    receiver.save
    redirect_to  receivers_path
  end

  def edit
    @receiver = Receiver.find(params[:id])

  end

  def update
    @receiver = Receiver.find(params[:id])
    @receiver.update(receiver_params)
    redirect_to receivers_path
  end

  def destroy
     @receiver = Receiver.find(params[:id])
     @receiver.destroy
     redirect_to receivers_path
  end

  private
  def receiver_params
    params.require(:receiver).permit(:payment_method, :postal_code, :address, :name)
  end

end

