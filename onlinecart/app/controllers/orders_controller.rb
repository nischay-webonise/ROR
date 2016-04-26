class OrdersController < ApplicationController
  def add_to_cart
    @x = Product.find(params[:id])
    @order = Order.new
  end

  def new

  end

  def create
    puts("#{order_params}")
    order = Order.new(order_params)
    redirect_to orders_path if order.save
  end

  def index
    @orders = Order.all
  end

  private

  def order_params
    params.require(:order).permit(:name, :price, :quantity, :description, :product_id)
  end

end
