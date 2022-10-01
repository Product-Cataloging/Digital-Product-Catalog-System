class ContactInformation < ApplicationRecord
    validates :primary_phone_number, :secondary_phone_number, :fax, :email, presence: true
    validates :primary_phone_number, :secondary_phone_number, :email, uniqueness: true
end
