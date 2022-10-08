class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  delegate(:name, to: :category, prefix: true)
  delegate(:company_name, to: :supplier, prefix: true)

  validates :name , :brand, presence: true

end
