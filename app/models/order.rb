class Order < ApplicationRecord
  has_many :products, through: :order_details
  has_many :order_details
  belongs_to :user
  has_many :pays, through: :order_pays
  has_many :order_pays
end
