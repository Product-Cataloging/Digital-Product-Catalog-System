class Supplier < ApplicationRecord
  belongs_to :address
  belongs_to :contact_information

  validates :company_name, presence: true

end
