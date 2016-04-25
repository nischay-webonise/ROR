class OrdersController < ApplicationController

  def add_to_cart
    @order = Product.find(params[:id])
  end

end
