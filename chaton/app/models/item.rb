class Item < ApplicationRecord
  has_many :cart
  has_many :users, through: :cart
end
