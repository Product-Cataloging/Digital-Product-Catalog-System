require 'rails_helper'

RSpec.describe QuotationRequest, type: :model do
  attributes = [
    { first_name: :presence },
    { last_name: :presence },
    { email: :presence},
    { phone_number: :presence},
    { product_name: :presence},
    { image_url: :presence},
  ]

  include_examples('model_shared_spec', :quotation_request, attributes)
end
