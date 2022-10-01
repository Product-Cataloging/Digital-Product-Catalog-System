require 'rails_helper'

RSpec.describe Customer, type: :model do
  attributes = [
    { first_name: :presence },
    { last_name: :presence },
    { contact_information: :belong_to },
    { user: :belong_to },
    { address: :belong_to },
  ]

  include_examples('model_shared_spec', :customer, attributes)
end
