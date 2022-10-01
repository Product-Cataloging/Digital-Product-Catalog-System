class Address < ApplicationRecord
    validates :address_line1, :address_line2, :region, :city, :postal_code, presence: true
end
