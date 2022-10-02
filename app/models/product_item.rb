class ProductItem < ApplicationRecord
  belongs_to :unit_of_measure
  belongs_to :product
  belongs_to :currency

  validates :color, :price, :size, presence: true
end
