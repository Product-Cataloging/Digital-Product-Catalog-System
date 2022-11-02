class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  delegate(:name, to: :product , prefix: true)
  delegate(:order_status, to: :order, prefix: :true)

  validates :order_date, :delivery_date, presence: true
end
