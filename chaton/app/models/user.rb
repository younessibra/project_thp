class User < ApplicationRecord
  has_many :cart
  has_many :items, through: :cart
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :welcome_send

  def welcome_send
    Usermailer.welcome-email(self).deliver_now
  end

end
