require 'rails_helper'

RSpec.describe Supplier, type: :model do
  attributes = [
    { company_name: :presence },
    { contact_information: :belong_to },
    { address: :belong_to }
  ]

  include_examples('model_shared_spec', :supplier, attributes)
end
