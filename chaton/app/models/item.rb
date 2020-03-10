class Item < ApplicationRecord
  has_one :cart
  has_many :users, through: :cart
end
