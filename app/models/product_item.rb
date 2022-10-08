class ProductItem < ApplicationRecord
  belongs_to :unit_of_measure
  belongs_to :product
  belongs_to :currency
  belongs_to :supplier

  validates :color, :price, :dimension, :material , presence: true
end
