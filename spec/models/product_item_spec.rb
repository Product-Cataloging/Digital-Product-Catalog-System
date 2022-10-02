require 'rails_helper'

RSpec.describe ProductItem, type: :model do
  attributes = [
    { color: :presence },
    { size: :presence },
    { price: :presence },
    { product: :belong_to },
    { currency: :belong_to },
    { unit_of_measure: :belong_to },
  ]

  include_examples('model_shared_spec', :product_item, attributes)
end
