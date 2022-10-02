require 'rails_helper'

RSpec.describe Product, type: :model do
  attributes = [
    { name: :presence },
    { category: :belong_to },
    { supplier: :belong_to }
  ]

  include_examples('model_shared_spec', :product, attributes)
end
