class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :user
  belongs_to :item
end
