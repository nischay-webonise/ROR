class ProductsController < ApplicationController
  def mainpage
  end

  def index
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end


  private

  def product_params
    params.require(:product).permit(:name, :info, :price, :quantity)
  end

end
