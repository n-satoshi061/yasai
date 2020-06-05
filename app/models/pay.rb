class Pay < ApplicationRecord

  has_many :orders, through: :order_pays
  has_many :order_pays
end
