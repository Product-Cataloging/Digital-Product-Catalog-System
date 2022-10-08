class Supplier < ApplicationRecord
 

  validates :company_name,:primary_phone_number, :email, :address_line, presence: true
  validates :primary_phone_number , uniqueness: true



  
end
