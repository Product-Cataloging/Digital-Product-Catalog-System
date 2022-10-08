class Product < ApplicationRecord
  belongs_to :category
 

  delegate(:name, to: :category, prefix: true)

  

  validates :name , :brand, presence: true

end
