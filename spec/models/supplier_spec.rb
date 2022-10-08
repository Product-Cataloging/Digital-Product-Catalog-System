require 'rails_helper'

RSpec.describe Supplier, type: :model do
  attributes = [
    { company_name: :presence },
    { primary_phone_number: %i[uniqueness presence]},
    { email: :presence},
    { address_line: :presence}
    
   
  ]

  include_examples('model_shared_spec', :supplier, attributes)
end
