class Order < ApplicationRecord
  belongs_to :user

  delegate(:username, to: :user, prefix: true)

  validates :order_status, :price, :quantity, presence: true
end
