class AddOrderToCart < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :order, foreign_key: true
  end
end
