class CartsController < ApplicationController

  def update 
    @item = Item.find(params[:id])
    if (current_user.items.include?(@item) == false)
      current_user.items << @item
    end
    redirect_to('/')
  end

  def show    
      @cart = current_user.items      
  end

  def edit
    itemToRemove = Item.find(params[:id])
    if (current_user.items.include?(itemToRemove))
      current_user.items.delete(itemToRemove)
    end
    redirect_to("/carts/#{params[:id]}")
  end


end
