class Product < ApplicationRecord
  belongs_to :category
 

  delegate(:name, to: :category, prefix: true)

  

  validates :name , :brand, :description, :picture, :dimensions, :conversion_factor, :base_unit, :target_unit, :date_valid_from, :expiry_date, :item_group, :weight_in_kg, :tax_class, :revenue_code, :color, :material, presence: true

end
