class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  validates :name , :brand, presence: true

end
