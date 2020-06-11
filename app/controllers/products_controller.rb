class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

end
