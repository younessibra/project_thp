class User < ApplicationRecord
  has_many :cart
  has_many :items, through: :cart
  has_many :order
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
