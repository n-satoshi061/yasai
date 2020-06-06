class OrdersController < ApplicationController

  def create
    @order = Order.find(params[:id])
    
    redirect_to root_path, notice: 'メッセージが送信されました'
  end

  private
  def order_params
    params.require(:order).permit(:)
  end
end
