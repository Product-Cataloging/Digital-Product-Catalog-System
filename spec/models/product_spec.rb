require 'rails_helper'

RSpec.describe Product, type: :model do
  attributes = [
    { name: :presence },
    { category: :belong_to },
    { brand: :presence}
  ]

  include_examples('model_shared_spec', :product, attributes)
end
