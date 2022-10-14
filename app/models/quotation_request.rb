class QuotationRequest < ApplicationRecord
    REQUESTED = 'Requested'.freeze
    PROCESSING = 'Processing'.freeze
    ADDRESSED = 'Addressed'.freeze
    STATUSES = [REQUESTED, PROCESSING, ADDRESSED].freeze

    validates :first_name, :last_name, :email, :phone_number, :product_name, :image_url, :status, presence: true

    validates :status , inclusion: {:in => STATUSES}

end
