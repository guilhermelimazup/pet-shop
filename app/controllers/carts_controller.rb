class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    render json: @order_items, :include => :product, status: 200
  end

end