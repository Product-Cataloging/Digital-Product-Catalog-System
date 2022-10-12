class QuotationRequest < ApplicationRecord
    validates :first_name, :last_name, :email, :phone_number, :product_name, :image_url, presence: true
end
