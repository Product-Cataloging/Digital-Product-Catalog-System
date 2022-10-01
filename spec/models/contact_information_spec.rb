require 'rails_helper'

RSpec.describe ContactInformation, type: :model do
  attributes = [
    { primary_phone_number: %i[presence uniqueness] },
    { secondary_phone_number: %i[presence uniqueness] },
    { fax: :presence },
    { email: %i[presence uniqueness]},
  ]

  include_examples('model_shared_spec', :contact_information, attributes)
end
