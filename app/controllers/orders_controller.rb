class OrdersController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def create
    @order = Product.find(params[:id])
    redirect_to root_path, notice: '購入が完了しました。'
  end

  private
  def order_params
    params.require(:order).permit(:)
  end
end
