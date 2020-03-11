class Order < ApplicationRecord
  has_many :cart
  has_many :items, through: :cart
  belongs_to :user
end
