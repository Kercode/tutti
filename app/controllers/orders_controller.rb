class OrdersController < ApplicationController
  def new
    @order = Order.new
    @product = Product.all
    @consumer = Consumer.all
  end

  def create
    #binding.pry
    @product = Product.all
    @order = Order.create consumer_id:params[:consumer_id]
    @product.each do |p|
    @order_item = OrderItem.create product_id:p.id, quantity:params[:quantity], order_id: @order.id
    end
    # @order = Order.create order_params
    # @order_item = OrderItem.create order_item_params.merge(
    #   order_id: 1
    # )
    if @order && @order_item
      flash[:info] = "success"
      redirect_to request.referrer
    else
      flash[:info] = "failed"
      render 'new'
    end
  end

  private

  # def order_params
  #   params.require(:order).permit(:consumer_id)
  # end

  # def order_item_params
  #   params.require(:order_item).permit(:product_id, :quantity, :order_id)
  # end
  
end