class OrdersController < ApplicationController

  before_action :authenticate_user!, only: [:create]


  def create
    puts("in create#{order_params}")
    @order = Order.new(order_params)
    @order1 = Product.find_by(id: params[:order][:product_id])
    if @order.save
      redirect_to orders_path
    else
      render :add_to_cart
    end
  end

  def new
  end

  def index
    @orders = Order.all
  end

  def update
    puts("in update#{order_params}")
    @order = Order.find(params[:id])

    @order.update(order_params)
    redirect_to orders_path

  end


  def add_to_cart
    @order1 = Product.find(params[:id])
    @order = Order.new
  end

  private

  def order_params
    params.require(:order).permit(:name, :price, :quantity, :description,
                                  :product_id, :quant)
  end
end
