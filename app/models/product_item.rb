class ProductItem < ApplicationRecord
  belongs_to :unit_of_measure
  belongs_to :product
  belongs_to :currency
  belongs_to :supplier

  delegate(:company_name, to: :supplier, prefix: true)
  delegate(:name, to: :unit_of_measure, prefix: true)
  delegate(:name, to: :currency, prefix: true)
  delegate(:name, to: :product, prefix: true)

  validates :color, :price, :dimension, :material , presence: true
end
