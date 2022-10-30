require 'rails_helper'

RSpec.describe Product, type: :model do
  attributes = [
    { name: :presence },
    { category: :belong_to },
    { description: :presence},
    { brand: :presence },
    { dimensions: :presence },
    { conversion_factor: :presence },
    { base_unit: :presence },
    { target_unit: :presence} ,
    { expiry_date: :presence },
    { item_group: :presence },
    { weight_in_kg: :presence },
    { tax_class: :presence },
    { revenue_code: :presence },
    { date_valid_from: :presence},
    { color: :presence },
    { material: :presence },
    { picture: :presence }
  ]

  include_examples('model_shared_spec', :product, attributes)
end
