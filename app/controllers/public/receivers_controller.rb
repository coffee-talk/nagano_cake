class Public::ReceiversController < ApplicationController
  
  def index
    @receiver = Receiver.new
    @receivers = Receiver.all
  end 
  
  def create
    receiver = Receiver.new(receiver_params)
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
    
  end
  
  private
  def receiver_params
    params.require(:receiver).permit(:postal_code, :address, :name)
  end
  
end

