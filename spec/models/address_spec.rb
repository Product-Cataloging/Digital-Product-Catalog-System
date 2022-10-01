require 'rails_helper'

RSpec.describe Address, type: :model do
  attributes = [
    { address_line1: :presence },
    { address_line2: :presence },
    { city: :presence },
    { region: :presence },
    { postal_code: :presence },
  ]

  include_examples('model_shared_spec', :address, attributes)
end
