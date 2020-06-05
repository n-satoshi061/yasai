class OrderPay < ApplicationRecord

  belongs_to :order
  belongs_to :pay
end
