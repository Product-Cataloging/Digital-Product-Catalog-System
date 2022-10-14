require 'rails_helper'

RSpec.describe ProductItem, type: :model do
  attributes = [
    { color: :presence },
    { dimension: :presence },
    { price: :presence },
    { product: :belong_to },
    { currency: :belong_to },
    { material: :presence},
    { supplier: :belong_to},
    { packaging_unit: :presence }
  ]

  include_examples('model_shared_spec', :product_item, attributes)
end
