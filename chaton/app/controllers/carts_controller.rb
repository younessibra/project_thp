class CartsController < ApplicationController

  def update 
    @item = Item.find(params[:id])
    if (current_user.items.include?(@item) == false)
      current_user.items << @item
    end
    redirect_to('/')
  end

end
