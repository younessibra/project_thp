class OrdersController < ApplicationController
  def new
    @order = Order.create
    @order.user = current_user
    @order.items = current_user.items
    current_user.items.clear
    redirect_to('/')
    @order.save
  end

end
