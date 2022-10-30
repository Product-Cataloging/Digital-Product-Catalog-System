FactoryBot.define do
  factory :product do
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph }
    category factory: :category
    image_url { FFaker::Lorem.word }
    brand { FFaker::Lorem.word }
    dimensions {FFaker::Lorem.word}
    date_valid_from {FFaker::Lorem.word}
    conversion_factor {FFaker::Lorem.word}
    base_unit {FFaker::Lorem.word}
    target_unit { FFaker::Lorem.word}
    expiry_date { FFaker::Lorem.word}
    item_group { FFaker::Lorem.word}
    weight_in_kg { FFaker::Lorem.word}
    tax_class { FFaker::Lorem.word}
    revenue_code { FFaker::Lorem.word}
    color { FFaker::Lorem.word}
    material { FFaker::Lorem.word}
    picture { FFaker::Lorem.word}

    
  end
end
