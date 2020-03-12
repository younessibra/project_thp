class Item < ApplicationRecord
  has_many :cart
  has_many :users, through: :cart
  has_many :order_items
  has_many :orders, through: :order_items
end
