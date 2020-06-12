class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
  end
end
